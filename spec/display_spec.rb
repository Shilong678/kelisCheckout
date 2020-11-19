# frozen_string_literal: true

require File.expand_path '../lib/display.rb', __dir__
require File.expand_path 'spec_helper.rb', __dir__

describe 'Display' do
  let(:display) { Display.new(cart: %w[GR1 SR1 CF1], price: 19.34) }


  it 'display message' do
    a = /Basket: GR1,SR1,CF1/
    b = /Total price expected: £19.34/
    expect { display.message }.to output(a).to_stdout
    expect { display.message }.to output(b).to_stdout
  end
end
