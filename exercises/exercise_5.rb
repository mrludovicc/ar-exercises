require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
avg_revenue = total_revenue / Store.count
high_revenue = Store.where("annual_revenue > ?", 1000000).count

puts "total_revenue: #{total_revenue}"
puts "avg_revenue: #{avg_revenue}"
puts "more than 1M revenue: #{high_revenue}"
