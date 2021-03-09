# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# need to change issue_number type to string
# need to add column "issue_sub_title"
# need to add column "price" with type as integer

comicbook = ComicBook.new(
  publisher: "Marvel Comics", series_title: "X-Men", issue_number: 1,
)
comicbook.save

comicbook = ComicBook.new(
  publisher: "DC Comics", series_title: "Batman", issue_number: 1,
)
comicbook.save

comicbook = ComicBook.new(
  publisher: "Marvel Comics", series_title: "Avengers", issue_number: 15,
)
comicbook.save

comicbook = ComicBook.new(
  publisher: "DC Comics", series_title: "The Amazing Superman", issue_number: 53,
)
comicbook.save
