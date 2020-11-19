# frozen_string_literal: true

class Display
  attr_reader :cart, :price
  def initialize(args)
    @cart = args[:cart]
    @price = args[:price]
  end

  def message
    display_cart
    display_price
  end

  private

  def display_cart
    puts "Basket: #{cart.join(',')}"
  end

  def display_price
    puts "Total price expected: £#{price}"
  end
end
