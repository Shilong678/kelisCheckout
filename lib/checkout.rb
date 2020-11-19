# frozen_string_literal: true

require File.expand_path 'display.rb', __dir__
require File.expand_path 'rules.rb', __dir__

class Checkout
  attr_accessor :basket
  attr_reader :rules, :product
  def initialize(rules = '', product: Product.new)
    @rules = rules
    @basket = []
    @product = product
  end

  def scan(item)
    basket.push(item) if product_code_valid(item)
  end

  def total
    display unless basket.empty?
    puts 'Your basket is empty' if basket.empty?
  end

  private

  def display
    Display.new(cart: basket, price: ruler).message
  end

  def ruler
    Rules.new(rules: rules, basket: basket).apply
  end

  def product_code_valid(item)
    product.product_code_include(item)
  end
end
