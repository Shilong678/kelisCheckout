# frozen_string_literal: true

require File.expand_path '../lib/product.rb', __dir__
require File.expand_path 'spec_helper.rb', __dir__

describe 'Product' do
  let(:product) { Product.new(%w[GR1 SR1 CF1]) }

  it 'find product price' do
    expect(product.find_product_price).to eq [3.11, 5, 11.23]
  end

  it 'calculate sum' do
    expect(product.sum).to eq 19.34
  end

  it 'checks product code exists' do
    expect(product.product_code_include('GR1')).to be true
    expect(product.product_code_include('SAM')).to be false
  end
end
