require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m1=Manager.new("Michael", "IT", 35)
m2=Manager.new("Andrea", "Admin", 30)

e1=Employee.new("John", 1500, m1)
e2=Employee.new("Susan", 2000, m1)
e3=Employee.new("Jamie", 3000, m1)
e4=Employee.new("Logan", 2000, m2)

#Test your code here


binding.pry
puts "done"
