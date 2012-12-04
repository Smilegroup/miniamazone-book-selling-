class Book
	attr_accessor :isbn, :title, :author, :price
	
	@@book_list=[]
	def initialize(option={})
		@isbn=option[:isbn]
		@title=option[:title]
		@author=option[:author]
		@price=option[:price]
		@@book_list.push(self)
	end


	def self.display_all_books
		puts "\nList OF All BOOKS"
		puts "................."
		puts "\tIsbn\t\tTitle\t\tPrice($)\t\tAuthor"
		puts "\t----\t\t-----\t\t--------\t\t------"
		@@book_list.each do |book|
			puts "\t#{book.isbn}\t\t#{book.title}\t\t#{book.price}\t\t\t#{book.author}"
			
		end
	end

	def self.price_lessthan(value)


		puts "\nBOOK-LIST WITH PRICE LESS THAN ($).#{value}"
		puts ".........................................."
		puts "\tIsbn\t\tTitle\t\tPrice($)\t\tAuthor"
		puts "\t----\t\t-----\t\t--------\t\t------"
		
		@@book_list.each do
			|book| 
			if book.price.to_i< value
				
				puts "\t#{book.isbn}\t\t#{book.title}\t\t#{book.price}\t\t\t#{book.author}"

				
				
				
			end
		end
		
	end

	def self.book_delete(book_name)
		index=0
		
		@@book_list.each do
			|book| 

				if book.title == book_name
				
				@@book_list.delete_at(index)
				
				puts "\n#{book_name} book deleted successfully"	
			end
			index=index+1
				
				
		
		
		end

	end

	
end