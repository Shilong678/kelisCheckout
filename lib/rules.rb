# frozen_string_literal: true

require File.expand_path 'product.rb', __dir__
require File.expand_path 'discount.rb', __dir__
class Rules
  attr_reader :rules, :basket, :discount, :product

  def initialize(rules:, basket:, discount: Discount.new(basket),
                 product: Product.new(basket))
    @rules = rules
    @basket = basket
    @discount = discount
    @product = product
  end

  def apply
    scenario.fetch(rules.to_sym)
  rescue KeyError
    total_cart
  end

  private

  def scenario
    { 'greentea': green_tea, 'strawberries': strawberry }
  end

  def green_tea
    total_cart - discount.buy_one_get_one_free('GR1')
  end

  def strawberry
    total_cart - discount.more_than_tree(item: 'SR1', new_price: 4.5)
  end

  def total_cart
    product.sum
  end
end
