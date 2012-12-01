class Admin
	attr_reader :category_name, :list

			def add(list)
			@list=list
			answer="yes";
					until answer=="no" do
					puts "enter new book name"
					new_element=gets
					@list.push("#{new_element}")
					puts "more list(yes/no)?"
					answer=gets.chomp
					end

			end

			def show(list)
					if @list==nil

					 @list=list
					end
				puts @list

			end

			def delete(list)
				if @list==nil
					
					@list=list

				end

				puts @list 

				puts "name of book to delete:"
				name=gets.chomp
				@list.delete("#{name}")

			end

end

	category_array=["engineering","Arts","Commerce"]
	admin=Admin.new
	begin
		puts "a. Show book list\nb.Add new book\nc.delete existing book\nenter options(a,b or c)"
		ans=gets.chomp;

		case ans
				when "a"
				  admin.show(category_array)
				when "b"
				  admin.add(category_array)
				when "c"
				   admin.delete(category_array)
				else
				  puts "wrong input!"
				end
		puts "more options:(y/n)"
		ans=gets.chomp
	end while ans=="y"

