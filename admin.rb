



class Book
	attr_accessor :isbn, :title, :author, :price
	

	def initialize(option={})
		@isbn=option[:isbn]
		@title=option[:title]
		@author=option[:author]
		@price=option[:price]
		
	end

	def display
		puts "isbn:"+@isbn+"\t title:"+@title+"\t price:"+@price+"\t author:"+@author
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
	 def price_lessthan(value)
		book_list=[]

		
		@booklist.each do
			|book| 
			if book[1]< value
				
				book_list.push([book[0],book[1]])
				
			end
		end

		
		
		if !book_list
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
 science.display()

math=Book.new({:isbn=>"1234",:title=>"math",:author=>"hkdjfguyd",:price=>"337"})
english=Book.new({:isbn=>"1234",:title=>"english",:author=>"hkdjfguyd",:price=>"5"})
nepali=Book.new({:isbn=>"4",:title=>"nepali",:author=>"hkdjfguyd",:price=>"8"})


engineering=Category.new("engineering")
arts=Category.new("arts")
commerce=Category.new("commerce")
arts.addbook(nepali)
arts.addbook(math)
arts.addbook(english)

Category.category_list
arts.view_book
arts.price_lessthan(10)

