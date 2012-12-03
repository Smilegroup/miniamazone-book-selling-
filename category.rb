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

	def self.category_delete(category_name)

		@@categoryList.delete(category_name)	
		puts "selected category deleted successfully"	

	end
	def book_delete(book_name)
		
		@booklist.delete(book_name)	
		puts "selected book deleted successfully"	

	end


	

end

