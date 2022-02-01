=begin
### Exercise 5: Calculations
1. Output the total revenue for the entire company (all stores), using Active Record's `.sum` calculation method.
2. On the next line, also output the average annual revenue for all stores.
3. Output the number of stores that are generating $1M or more in annual sales. **Hint:** Chain together `where` and `size` (or `count`) Active Record methods.
=end

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

#1
@total_annual_revenue = Store.sum(:annual_revenue)
puts "The annual revenue is $#{@total_annual_revenue}"

#2
@average_revenue = Store.average(:annual_revenue)
puts "The average annual store revenue is $#{@average_revenue}"

#3
@big_bucks_stores = Store.where(:annual_revenue > 1000000).count
puts "The number of stores generating $1mio + annualy is ##{@big_bucks_stores}"