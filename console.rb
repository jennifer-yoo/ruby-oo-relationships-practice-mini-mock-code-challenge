require 'pry'
require_relative './book'
require_relative './author'
require_relative './publication'

jenn = Author.new("Jenn")
sam = Author.new("Sam")
bill = Author.new("Bill")
jim = Author.new("Jim")
vin = Author.new("Vin")
ted = Author.new("Ted")

b1 = Book.new("title1", 1000)
b2 = Book.new("title2", 400)
b3 = Book.new("title3", 20)
b4 = Book.new("title4", 200)
b5 = Book.new("title5", 400)
b6 = Book.new("title6", 500)
b7 = Book.new("title7", 1400)

p1 = Publication.new(jenn, b1)
p2 = Publication.new(sam, b1)
p3 = Publication.new(bill, b4)
p4 = Publication.new(jim, b2)
p5 = Publication.new(vin, b1)
p6 = Publication.new(ted, b3)
p7 = Publication.new(ted, b5)

binding.pry

"something"
