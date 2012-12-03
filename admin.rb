



class Book
	attr_accessor :isbn, :title, :author, :price
	@@booklist=[]

	def initialize(option={})
		@isbn=option[:isbn]
		@title=option[:title]
		@author=option[:author]
		@price=option[:price]
		@@booklist.push(option[:title])
	end

	def display()
		puts "isbn:"+@isbn
		puts "title:"+@title
		puts "price:"+@price
		puts "author:"+@author
	end

	def self.booklist
		puts @@booklist
	end
end

class Category
	attr_accessor :name
	@@categoryList=[]
	

	def initialize(name)
		@name=name
		@@categoryList.push(name)
		@booklist=[]
	end

 	def addbook(book_object)
		@booklist.push([book_object.title, book_object.price.to_i])

	end

	def view_book
		

		puts @booklist
		

	 end
	 def price_lessthanten
		book_list=[]
		
		@booklist.each do
			|book| 
			if book[1]<10
				book_list.push([book[0],book[1]])
			end
		

		end
		
		if book_list
			puts "no books to display"
		else
		puts book_list
	end
		

	 end


	def self.category_list
	 	puts @@categoryList
	end

	

end


science=Book.new({:isbn=>"123",:title=>"science",:author=>"1",:price=>"9"})
 #book.display()

math=Book.new({:isbn=>"1234",:title=>"math",:author=>"hkdjfguyd",:price=>"337"})
english=Book.new({:isbn=>"1234",:title=>"english",:author=>"hkdjfguyd",:price=>"337"})

Book.booklist
engineering=Category.new("engineering")
arts=Category.new("arts")
commerce=Category.new("commerce")

Category.category_list

engineering.addbook(math)
arts.addbook(english)
commerce.addbook(math)
commerce.addbook(english)
engineering.addbook(science)
puts "this is books of commerce"
commerce.view_book
puts "this is books of arts"
arts.view_book
puts "this is books of engineering"
engineering.view_book
arts.price_lessthanten
