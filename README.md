# Readme

## Set up

run bundle

## Test

run rspec spec

## Execution

Write in bin/execute.rb your code


```
co = Checkout.new(rule)
co.scan(item)
co.scan(item)
co.scan(item)
co.total

```

To activate buy one get one green tea for free discount, enter 'greentea' for rule

To activate more than 3 strawberries discount, enter 'strawberries' for rule


```

co = Checkout.new('greentea')
co.scan('GR1')
co.scan('SR1')
co.scan('CF1')
co.total

```

## Solution

My solution was:

Step 1) Calculate the total cost of the basket without discount

Step 2) Calculate the cost of the discount

Step 3) Substract the discount from the total cost of the basket without discount

Ex: 

basket = ['green tea', 'strawberries', 'coffee','green tea','green tea']

price in order for each item are [£3 , £5, £11, £3, £3]

pre-total = £25

The customer get a green tea discount of £9 - £6 = £3 .  greentea_total_without_discount - greentea_total_with_discount 

total = £25 - £3 = £22