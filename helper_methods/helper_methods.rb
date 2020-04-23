require "tty-prompt"
require_relative "../classes/vehicle.rb"
require_relative "../classes/dealership.rb"
require_relative "../classes/stock.rb"

def initialize_stock(stock)

    stock.add_item(Speedster.new).add_item(ModelM.new).add_item(ModelX.new).add_item(Cybertruck.new)

end

def clear
    return system("clear")
end

def get_name
    puts "Welcome to Testla Motors!" 
	puts "To get going, please enter your name:"
	user_name = gets.strip.capitalize
    clear
    if user_name != ""
        puts "Thank you #{user_name}, press enter to continue to options"
        gets
        return user_name
    else user_name == ""
        puts "Sorry, it looks like you didn't enter anything."
    end
end

def help(dealership)
    clear
    #BANNER HERE
    puts "Testla Motors"
    puts dealership.contact_info
    return_to_menu
end

def return_to_menu
    puts "Press enter to return to the menu"
    gets
    clear
end

def extras
    puts
    yes_no = TTY::Prompt.new.select("Would you like to add any optional extras?") do |menu|
                menu.choice("Yes")
                menu.choice("No")
    end
    clear

    if yes_no == "No"
        return
    else yes_no == "Yes"

        extras = TTY::Prompt.new.multi_select("Please chose the Testla extras you would like to add to your purchase today:") do |menu|
            menu.choice('Carbon Wheels', 1)
            menu.choice('Oak Wood Interior', 2)
            menu.choice('Self-Driving Capability', 3)
            menu.choice('Ludicrously Fast Mode', 4)
        end
        return extras

    end
end

def add_colour
    colour = TTY::Prompt.new.select("Please chose your colour:") do |menu|
        menu.choice("Black")
        menu.choice("White")
        menu.choice("Red")
        menu.choice("Navy")
        menu.choice("Yellow")
    end
    return colour
end

def get_order(stock, order, vehicle)
    
    item = stock.select

    h = {"Model X"=> ModelX.new, "Model M" => ModelM.new, "Speedster" => Speedster.new, "Cybertruck" => Cybertruck.new}
    
    order.add_vehicle(h[item],1)
    
    #ADD IN TESTLA MOTOS BANNER HERE!
    stock.display_model(h[item])
   
    add_colour
    extras

end

def main_banner
clear
puts "88888888888 8888888888 .d8888b. 88888888888 888             d8888 "
puts "    888     888       d88P  Y88b    888     888            d88888 "
puts "    888     888       Y88b.         888     888           d88P888 "
puts "    888     8888888    Y888b.       888     888          d88P 888 "
puts "    888     888           Y88b.     888     888         d88P  888 "
puts "    888     888             888     888     888        d88P   888 "
puts "    888     888       Y88b  d88P    888     888       d8888888888 "
puts "    888     8888888888  Y8888P      888     88888888 d88P     888 "
puts
end