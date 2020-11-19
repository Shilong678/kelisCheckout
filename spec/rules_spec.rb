# frozen_string_literal: true

require File.expand_path '../lib/rules.rb', __dir__
require File.expand_path 'spec_helper.rb', __dir__

describe 'Rules' do
  it 'return total with green tea discount ' do
    basket = %w[GR1 SR1 GR1 GR1 CF1]
    ruler = Rules.new(rules: 'greentea', basket: basket)
    expect(ruler.apply).to eq 22.45
  end

  it 'return total with strawberries discount' do
    basket = %w[SR1 SR1 GR1 SR1]
    ruler = Rules.new(rules: 'strawberries', basket: basket)
    expect(ruler.apply).to eq 16.61
  end
end
