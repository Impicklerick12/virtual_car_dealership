require "tty-prompt"

def initialize_stock(stock)

    stock.add_item(Speedster.new).add_item(ModelM.new).add_item(ModelX.new).add_item(Cybertruck.new)

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

def return_to_menu
    puts "Press any key to return to the menu"
    gets
    clear
end

def extras

    puts "Would you like to add any optional extras? Y/N \n"
    yes_or_no = gets.chomp.downcase
    clear

    if yes_or_no == "n"
        return
    elsif yes_or_no == "y"
        extras = TTY::Prompt.new.multi_select("Please chose the Testla extras you would like to add to your purchase today:") do |menu|
            menu.choice('Carbon Wheels', 1)
            menu.choice('Oak Wood Interior', 2)
            menu.choice('Self-Driving Capability', 3)
            menu.choice('Ludicrously Fast Mode', 4)
        end
        return extras
    else
        puts "Sorry, that doesn't seem to be an option."
    end
end

# def get_order(stock, order, user)

#     model = TTY::Prompt.new.select("Please chose the Testla model you would like to purchase today:",  cycle: true, marker: '>', echo: false) do |menu|
#         menu.choice('Model X', 1)
#         menu.choice('Model M', 2)
#         menu.choice('Speedster', 3)
#         menu.choice('Cybertruck', 4)

#         case model

#         when 1

#         when 2

#         when 3

#         when 4

#         end


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

def get_order(stock, order, vehicle)
    # while 1
        item = stock.select

        h = {"Model X"=> ModelX.new, "Model M" => ModelM.new, "Speedster" => Speedster.new, "Cybertruck" => Cybertruck.new}
        # # case statement?
        # # item = "Model X" if item == 1
        # # item = "Model M" if item == 2
        # # item = "Speedster" if item == 3
        # # item = "Cybertruck" if item == 4

        # if h.keys.include?(item) == true
        order.add_vehicle(h[item],1)
        #ADD IN TESTLA MOTOS BANNER HERE!
        stock.display_model(h[item])
        # else
        #     puts "Sorry we do have that in stock currently"
        # end



        extras


        # order.print_order
        #POTENTIAL TO ADD IN OPTIONAL EXTRAS HERE?
        # puts "Would you like to add any optional extras? Y/N \n"
        # yes_or_no = gets.chomp.downcase
        # if yes_or_no == "n"
        #     # order.total_selling_price
        #     order.print_order
        #     return
        # elsif yes_or_no == "y"
        #     #optional extras method?
        # else
        #     puts "Sorry, that doesn't seem to be an option."
        # end

    # end # end of that while 1 

end