# frozen_string_literal: true

class Product
  attr_reader :basket
  PRODUCT = [
    { code: 'GR1', name: 'Green tea', price: 3.11 },
    { code: 'SR1', name: 'Strawberries', price: 5 },
    { code: 'CF1', name: 'Coffee', price: 11.23 }

  ].freeze

  def initialize(basket = [])
    @basket = basket
  end

  def sum
    find_product_price.reduce(:+)
  end


  def find_product_price
    basket.map do |item|
      PRODUCT.find { |el| el[:code] == item }.fetch(:price)
    end
  end


  def product_code_include(item)
    product_code.include?(item)
  end

  private

  def product_code
    PRODUCT.map {|el| el[:code]}
  end
  
end
