class User
	attr_reader :category_name
	
	def main
		puts "press 1 to view all categories"
		id=gets.to_i
		puts id
		if id==1
			view
		end	
	end

	def view
		
		hash={"engineering"=>["DSAP"=>{"name"=>"DSAP","price"=>20},"CAD"=>{"name"=>"CAD","price"=>20},"TES"=>{"name"=>"TES","price"=>20}]}
		puts "we have following categories"
		puts "\n"
		puts hash.keys
		puts "\n"
		puts "Choose the category from above listed"
		selected_category=gets.chomp
		k="#{selected_category}"
		puts "\nThese are the available books in "+k+" category"
		puts hash[k]
		puts "select the book u want to buy from above list"
		selected_book=gets.chomp
		b="#{selected_book}"
	
		x = hash["engineering"].inject({}) { |h, res| h[res["name"]] = res[b]; h }
		puts x
		
	end
	
	

end
admin=User.new
admin.main




