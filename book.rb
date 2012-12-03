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