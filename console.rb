require 'pry'
require_relative './book'
require_relative './author'

jenn = Author.new("Jenn")
sam = Author.new("Sam")
bill = Author.new("Bill")
jim = Author.new("Jim")

b1 = Book.new(jenn, "title1", 1000)
b2 = Book.new(sam, "title2", 400)
b3 = Book.new(bill, "title3", 20000)
b4 = Book.new(sam, "title4", 200)

binding.pry

"something"
