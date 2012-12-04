class Category
	attr_accessor :name
	@@categoryList=[]
	

	def initialize(name)
		@name=name
		@@categoryList.push(self)
		@booklist=[]
	end

 	def addbook(book_object)
		@booklist.push([book_object.title, book_object.price.to_i])

	end

	def category_view_book
		count=1
		puts "\nBOOKS IN SELECTED CATEGORY"
		puts "............................."

		@booklist.each do
			|book| 
				puts "\t#{count}.#{book[0]}"
				#book_list.push([book[0],book[1]])
				count=count+1
				
				
			end
		
		

	 end
	 def price_lessthan(value)
		count=0
		puts "\nBOOKS IN SELECTED CATEGORY WITH PRICE LESS THAN #{value}"
		puts "....................................................."
		puts "\tTitle\t\tPrice"
		puts "\t-----\t\t-----"
		@booklist.each do
			|book| 
			if book[1]< value
				puts "\t#{book[0]}\t\t#{book[1]}"
				#book_list.push([book[0],book[1]])
				count=count+1
				
				
			end
		end

		
		
		if count==0
			puts "NO BOOKS TO DISPLAY IN SELECTED CATEGORY"
		end
		

	 end


	def self.category_list
		puts "\nLIST OF BOOK CATEGORIES"
		puts "......................."
		count=1
			@@categoryList.each do |list| 
			
			puts "\t#{count}.#{list.name}"
			count=count+1
		end
	end

	def self.category_delete(category_name)

		@@categoryList.delete(category_name)	
		puts "\n #{category_name} category deleted successfully"	

	end
	
def category_book_delete(book_name)
		index=0
		
		@booklist.each do
			|book| 

				if book[0] == book_name
				
				@booklist.delete_at(index)	
				
				puts "\n#{book_name} book deleted successfully"	
			end
			index=index+1
				
				
		
		
		end

	end

	

end

