require "tty-prompt"

def initialize_stock(stock)
    stock.add_item(Speedster.new) 
    stock.add_item(ModelM.new)
    stock.add_item(ModelX.new)
    stock.add_item(Cybertruck.new)
end

def clear
    return system("clear")
end

def get_name
	clear
    
	puts "Welcome to Testla Motors!"
	puts "To get going, please enter your name:"
	user_name = gets.strip.capitalize
    clear
    
    puts "Thank you #{user_name}, press any key to continue to options"
    gets
	return user_name
end

# def menu
# 	puts "[N]ew order"
# 	puts "[E]xisitng order"
# 	puts "[H]elp/Instructions"
# 	puts "[Q]uit"
# end

# def validate_answer
# 	puts "What would you like to do today?"
# 	answer = gets.strip.downcase
	
	
# 	case answer
			
# 		when answer == "n"
# 		get_order(stock, order, user)
		
# 		when answer == "e"
# 			if user.order > 0
# 				order.print_order
# 			else
# 				puts "Sorry, it looks like you have not placed an order yet."
# 				menu
# 			end
		
# 		when answer == "h"
		
# 		when answer == "q"
		
# 		contine = false
# 		return continue
	
# 	end
# end

# def get_order(stock, order, user)

#     choice = TTY::Prompt.new.select("Please chose the Testla model you would like to purchase today:",  cycle: true, marker: '>', echo: false) do |menu|
#         menu.choice('Model X', 1)
#         menu.choice('Model M', 2)
#         menu.choice('Speedster', 3)
#         menu.choice('Cybertruck', 4)

#         item = "Model X" if choice == 1
#         item = "Model M" if choice == 2
#         item = "Speedster" if choice == 3
#         item = "Cybertruck" if choice == 4

#         return "Thank you for stopping by Testla Motors! We hope to see you again soon" if choice == 0

#         h = {"Model X"=> ModelX.new, "Model M" => ModelM.new, "Speedster" => Speedster.new, "Cybertruck" => Cybertruck.new}
#         if h.keys.include?(item) == true
#             # puts "How many would you like ? "
#             count = 1
#             order.add_vehicle(h[item],count)
#         else
#             puts "Sorry we do have that in stock currently"
#         end

#         #POTENTIAL TO ADD IN OPTIONAL EXTRAS HERE?
#         puts "Would you like to add any optional extras? Y/N \n"
#         yes_or_no = gets.chomp.downcase
#         if yes_or_no == "n"
#             # order.total_selling_price
#             order.print_order
#             return
#         elsif yes_or_no == "y"
#             #optional extras method?
#         else
#             puts "Sorry, that doesn't seem to be an option."
#         end
#     end
# end

def get_order(stock, order, user)
    while 1
        # system("clear")
        puts stock
        h = {"Model X"=> ModelX.new, "Model M" => ModelM.new, "Speedster" => Speedster.new, "Cybertruck" => Cybertruck.new}
        puts "\n"
        puts "#{user.name} please enter your choice : 1 for Model X , 2 for Model M , 3 for Speedster, 4 for Cybertruck, 0 for quit"
        item = gets.chomp.to_i
        
        #case statement?
        item = "Model X" if item == 1
        item = "Model M" if item == 2
        item = "Speedster" if item == 3
        item = "Cybertruck" if item == 4

        return "Thank you for stopping by Testla Motors! We hope to see you again soon" if item == 0

        if h.keys.include?(item) == true
            # puts "How many would you like ? "
            count = 1
            order.add_vehicle(h[item],count)
        else
            puts "Sorry we do have that in stock currently"
        end

        #POTENTIAL TO ADD IN OPTIONAL EXTRAS HERE?
        puts "Would you like to add any optional extras? Y/N \n"
        yes_or_no = gets.chomp.downcase
        if yes_or_no == "n"
            # order.total_selling_price
            order.print_order
            return
        elsif yes_or_no == "y"
            #optional extras method?
        else
            puts "Sorry, that doesn't seem to be an option."
        end

    end # end of that while 1 

end