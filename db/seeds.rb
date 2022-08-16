# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Article.destroy_all

10.times do
  title = Faker::Book.title
  content = Faker::Quotes::Shakespeare.hamlet_quote
  Article.create(title: title, content: content)
  puts "title: #{title}, content: #{content}"
end

puts "Total articles: #{Article.count}"
