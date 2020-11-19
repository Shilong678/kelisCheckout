# frozen_string_literal: true

require File.expand_path '../lib/checkout.rb', __dir__
require File.expand_path 'spec_helper.rb', __dir__

describe 'Checkout' do
  let(:checkout) { Checkout.new }
  it 'add item to checkout' do
    checkout = Checkout.new
    checkout.scan('GR1')
    checkout.scan('SR1')
    expect(checkout.basket).to eq %w[GR1 SR1]
  end


end
