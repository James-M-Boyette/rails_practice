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
