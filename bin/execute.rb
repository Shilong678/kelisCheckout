# frozen_string_literal: true

require File.expand_path '../lib/checkout.rb', __dir__

#   PRODUCT = [
#     { code: 'GR1', name: 'Green tea', price: 3.11 },
#     { code: 'SR1', name: 'Strawberries', price: 5 },
#     { code: 'CF1', name: 'Coffee', price: 11.23 }

#   ]

# Rules are 'greentea' or 'strawberries'

# Ex:
# co = Checkout.new('strawberries')
# co.scan('GR1')
# co.scan('SR1')
# co.scan('SR1')
# co.scan('GR1')
# co.scan('SR1')
# co.scan('SR1')
# co.total

