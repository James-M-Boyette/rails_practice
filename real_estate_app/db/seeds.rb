# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# • One of the other developers in your company has created a map to show where all the addresses are on a google map. But, she needs the data to be computer/search friendly, and instead of adding an address column,
# Change #1) add latitude column, and
# Change #2) modify address type to FLOAT
# add two attributes called “latitude” and “longitude.”
# change #3) create column "longitude" + make FLOAT
# Use the float datatype.
# • Bonus: Update (or create if you haven’t already) the frontend option that users use to input their address details. Instead of saving the address directly like before, have the controller convert the address to latitude and longitude. To do this you’ll need to:

# Brad says ask for the inputs and outputs

# def address
#   [330 W 28 St, New York, NY, country].compact.join(', ')
# end

# address = "330 W 28 St apt 13b New York, NY, 10001"

results = Geocoder.search("330 W 28 St apt 13b, New York, NY, 10001")
results.first.coordinates
# => [48.856614, 2.3522219]  # latitude and longitude
