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
		puts "Book List"
		puts "isbn\t\ttitle\t\tprice($)\t\tauthor"
		puts "----\t\t-----\t\t--------\t\t------"
		@@book_list.each do |book|
			puts "#{book.isbn}\t\t#{book.title}\t\t#{book.price}\t\t\t#{book.author}"
			
		end
	end

	def self.price_lessthan(value)


		puts "Book-list with price less than #{value}($)"
		puts "isbn\t\ttitle\t\tprice($)\t\tauthor"
		puts "----\t\t-----\t\t--------\t\t------"
		
		@@book_list.each do
			|book| 
			if book.price.to_i< value
				
				puts "#{book.isbn}\t\t#{book.title}\t\t#{book.price}\t\t\t#{book.author}"

				
				
				
			end
		end
		
	end



	
end