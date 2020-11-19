# frozen_string_literal: true

require File.expand_path 'product.rb', __dir__

class Discount
  attr_reader :cart
  def initialize(cart)
    @cart = cart
  end

  def buy_one_get_one_free(item)
    pretotal = number(item) * price(item)
    discount = if number(item).even?
                 ((number(item) / 2) * price(item))
               else
                 (((number(item) - 1) / 2) * price(item)) + price(item)
               end
    return (pretotal - discount).round(2) if number(item) > 1
    return 0 if number(item) == 1
  end

  def more_than_tree(item:, new_price:)
    pretotal = number(item) * price(item)
    discount = if number(item) >= 3
                 number(item) * new_price
               else
                 number(item) * price(item)
               end
    (pretotal - discount).round(2)
  end

  private

  def price(item)
    Product.new([item]).find_product_price.first
  end

  def number(item)
    cart.count(item)
  end
end
