# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

products_without_supplier_ID = Product.where(supplier_id: nil)
products_without_supplier_ID.each do |product|
  random_supplier_id = Supplier.all.sample.id
  # or
  # product.supplier_id = [1,2,3].sample
  product.supplier_id = random_supplier_id
  product.save!
end

# add quantity to products

# put in Model product.rb
# def supplier
# Supplier.find_by(id: supplier_id)
# end

# Pre-Order Decomposition:
# User Needs to Buy Something:
# User needs to see a page with products
# - images,
# - quantities of stock, (is there a lot, or only 3 left, in which case, possibly a special message displays for 'quantities under 10' etc
# -
# - current price + tax + any applicable sales discounts
# User needs to select/associate their id to that product
# request needs to (potentially) maintain multiple selections between webpage surfing
# A check of the user's credentials needs to occur before creating the order (or a temporary guest needs to be created)
# An order needs to store
# - the price (of each item) at time of purchase
# - the the item(s)
# - *may* need to store updates/a history (if things were deleted from cart, or modified)
# - links to the items (possibly displayed on seperate "cart" page)
# Before execution, the server needs to send back a preliminary summary of the order
# Before execution, a second check of the user's credentials needs to occur
# After execution, the server needs to send back that same order (but add, on the back-end, the payment info of the buyer to the order - for processing and/or seller's records)
