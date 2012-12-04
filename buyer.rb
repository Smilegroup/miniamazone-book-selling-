
class Buyer
	attr_accessor :buyer_name, :cc_no , :address, :book_name
	@@info=[]
	@@count=0
	def initialize(option={})
	 
		@buyer_name=option[:buyer_name]
		@cc_no=option[:cc_no]
		@address=option[:address]
		@book_name=option[:book_name]
		@@count=@@count+1
		@@info.push(self)
	
		
	end

	def self.buyer_viewinfo
		puts "\nBUYER INFORMATION"
		puts ".................."
		puts "\tBuyer Name\t\tCC_Nos\t\tAddress\t\tBook Name"
		puts "\t----------\t\t------\t\t-------\t\t---------"
		@@info.each do |inf| 
			puts "\t#{inf.buyer_name}\t\t\t#{inf.cc_no}\t\t#{inf.address}\t#{inf.book_name}"
			
		end
	end


end