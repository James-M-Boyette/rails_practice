# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Add as many of these validations as you can to your models.
# -----------------------------
# Product
# Name - presence - uniqueness
# Price - presence - numericality and not a negative number or 0
# Description - length of a minimum of 10 and a maximum of 500 characters

# contact_1 = Contact.new(first_name: "James", last_name: "Boyette", email: "james.boyette@gmail.com", phone_number: "646 831 0253", address: "401 East 91 St Apt 5, New York, NY, 10128")

# p contact_1

class Contact
  attr_accessor :first_name, :last_name, :email, :phone_number, :address

  def initialize(input_info)
    @first_name = input_info[:first_name]
    @last_name = input_info[:last_name]
    @email = input_info[:email]
    @phone_number = input_info[:phone_number]
    @address = input_info[:address]
    contact.save
  end
end
