require 'book'
require 'category'
require 'buyer'
#creating book and its details
science=Book.new({:isbn=>"s1",:title=>"science",:author=>"Susan",:price=>"12"})

# creating new category
engineering=Category.new("engineering")

#View list of category
Category.category_list
#add book to category
engineering.addbook(science)



#buy book
 Buyer.new({:buyer_name=>"nikita",:cc_no=>"2424",:address=>"gaushala",:book_name=>"science"})


#view buyer informations
Buyer.buyer_viewinfo
#view all book
Book.display_all_books
engineering.price_lessthan(14)

Book.book_delete("science")
Book.display_all_books


engineering.category_book_delete("math")
engineering.category_view_book



