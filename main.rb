require 'book'
require 'category'
require 'buyer'
#creating book and its details
science=Book.new({:isbn=>"s1",:title=>"science",:author=>"Susan",:price=>"9"})
math=Book.new({:isbn=>"s2",:title=>"math",:author=>"Barun",:price=>"337"})
english=Book.new({:isbn=>"s3",:title=>"english",:author=>"Rojace",:price=>"5"})
nepali=Book.new({:isbn=>"s4",:title=>"nepali",:author=>"Pradeep",:price=>"8"})
# creating new category
engineering=Category.new("engineering")
arts=Category.new("arts")
commerce=Category.new("commerce")
#add book to category
engineering.addbook(science)

#buy book
 Buyer.new({:buyer_name=>"nikita",:cc_no=>"2424",:address=>"gaushala",:book_name=>"apple"})
Buyer.new({:buyer_name=>"nikita",:cc_no=>"2424",:address=>"gaushala",:book_name=>"apple"})

#view buyer informations
Buyer.viewinfo
#view all book
Book.display_all_books
Book.price_lessthan(10)
