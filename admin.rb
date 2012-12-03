



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
	@booklist=[]

	def initialize(name)
		@name=name
		@@categoryList.push(name)
	end

	# def addbook(book_object)
	# 	@booklist.push(book_object.title)

	# end

	# def view_book(name){



	# }
	 def self.category_list
	 	puts @@categoryList
	end

	

end


book=Book.new({:isbn=>"123",:title=>"12",:author=>"1",:price=>"3fdfr"})
 #book.display()

book1=Book.new({:isbn=>"1234",:title=>"math",:author=>"hkdjfguyd",:price=>"337"})

Book.booklist
cat=Category.new("engineering")
cat1=Category.new("arts")

Category.category_list
