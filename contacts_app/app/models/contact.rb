 class Contact < ApplicationRecord
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
