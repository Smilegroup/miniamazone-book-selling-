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
		
		hash={"engineering"=>["DSAP","CAD","TES"], "arts"=>["english","sociology","population"]}
		puts "we have following categories"
		puts "\n"
		puts hash.keys
		puts "\n"
		puts "Choose the category from above listed"
		selected_category=gets.chomp
		k="#{selected_category}"
		
		puts "\nThese are the available books in "+k+" category"
		puts hash[k]
	end
	
	

end
admin=User.new
admin.main




