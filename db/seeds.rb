# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
BookCopy.delete_all
Shop.delete_all
Book.delete_all
Publisher.delete_all

Publisher.create!(id: 1, name: 'Houghton Mifflin Harcourt')
Publisher.create!(id: 2, name: 'Arthur A. Levine Books')

Book.create!(id: 1, title: 'The Hobbit', publisher_id: 1)
Book.create!(id: 2, title: 'Harry Potter and the Prisoner of Azkaban', publisher_id: 2)
Book.create!(id: 3, title: 'The Ancient World', publisher_id: 1)

Shop.create!(id: 1, name: 'Amazon')
Shop.create!(id: 2, name: 'Barnes & Noble')
Shop.create!(id: 3, name: "Anderson's Bookshop")

BookCopy.create!(copies_in_stock: 3, books_sold_count: 20, shop_id: 1, book_id: 1)
BookCopy.create!(copies_in_stock: 6, books_sold_count: 2, shop_id: 3, book_id: 1)
BookCopy.create!(copies_in_stock: 9, books_sold_count: 9, shop_id: 3, book_id: 2)
BookCopy.create!(copies_in_stock: 2, books_sold_count: 30, shop_id: 1, book_id: 2)
BookCopy.create!(copies_in_stock: 4, books_sold_count: 23, shop_id: 2, book_id: 2)
BookCopy.create!(copies_in_stock: 17, books_sold_count: 6, shop_id: 2, book_id: 1)
BookCopy.create!(copies_in_stock: 0, books_sold_count: 90, shop_id: 1, book_id: 3)