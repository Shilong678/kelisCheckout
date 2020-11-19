
require File.expand_path '../lib/discount.rb', __dir__
require File.expand_path 'spec_helper.rb', __dir__

describe 'Discount' do

  it 'calculate Green Tea discount' do
    cart = %w[GR1 GR1 GR1 GR1 GR1]
    discount = Discount.new(cart)
    expect(discount.buy_one_get_one_free('GR1')).to eq 6.22
  end

  it 'calculate Strawberries discount' do
    cart = %w[SR1 SR1 SR1 SR1]
    discount = Discount.new(cart)
    expect(discount.more_than_tree(item: 'SR1', new_price: 4.5)).to eq 2
  end

end