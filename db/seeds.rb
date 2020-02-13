# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(first_name: 'Bennett', last_name: 'Foster', username: 'bennfos', email: 'bennfos@gmail.com', password:'Admin8*', password_confirmation: 'Admin8*')

Book.create(title: 'test book', description: 'testing', starts_blank: true, user_id: 1)

Page.create(month: 'january', day:'1', thought:'test thought', book_id: 1)

Quote.create(quote_text: 'test text', quote_author: 'tester', page_id: 1)