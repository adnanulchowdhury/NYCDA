# Based on http://www.jonathanleighton.com/articles/2011/awesome-active-record-bug-reports/ 

# Run this script with `$ pry app.rb`
require 'sqlite3'
require 'active_record'
require 'csv'

# Use `binding.pry` anywhere in this script for easy debugging
require 'pry'

# Connect to a sqlite3 database
# If you feel like you need to reset it, simply delete the file sqlite makes
ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'carson.sqlite'
)

# Define the models and relationships
class Car < ActiveRecord::Base
  belongs_to :customer
end

class Customer < ActiveRecord::Base
  has_one :car
  has_many :cars, through: :transactions
end

class Transaction < ActiveRecord::Base
  belongs_to :customer
  belongs_to :car

  def final_scale
    total = car.cost_price + (car.cost_price * (car.sale_markup/100))
    total_with_tax = total + (total * 0.088)
    "$#{total_with_tax.round(2)}"
  end
end

# Everytime the script is run it clears the database, this 
# is okay while working on carson's request.
# Car.destroy_all
# Customer.destroy_all
# Transaction.destroy_all

# cars = CSV.read("CAR_DATA.csv")
# CSV.foreach('CAR_DATA.csv') do |row|
#  puts row.inspect
# end
# Create a few records...
# or import that CSV and create the appropriate records off of it. 

car_array = CSV.read("CAR_DATA.csv")
car_array.shift()

for elements in car_array
  Car.create(model: "#{elements[7]}", make: "#{elements[6]}", cost_price: "#{elements[9]}", sale_markup: "#{elements[10]}")
  Customer.create(first_name: "#{elements[1]}", last_name: "#{elements[2]}", email: "#{elements[3]}", gender: "#{elements[4]}", phone_number: "#{elements[5]}")
  Transaction.create(customer_id: "#{elements[0]}", car_id: "#{elements[0]}")
end

# to let you use the terminal to CRUD the database. 
binding.pry
p transaction = Transaction.find(20).car