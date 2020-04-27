require "tty-prompt"
require "colorize"
require_relative "../classes/vehicle.rb"
require_relative "../classes/dealership.rb"
require_relative "../classes/stock.rb"
require_relative "banners.rb"

#clear method
def clear
    return system("clear")
end

#help method that is called from the main menu. Displays the dealership contact info and instructions
def help(dealership)
    clear
    main_menu_header
    puts
    puts dealership.contact_info
    puts
    puts "Testla aims to provide solutions for a modern world. 
    \nOur models are entirely electric powered and provide the highest performance available in any electic vehicle worldwide.
    \nTo navigate around the app, please use your arrow keys and the enter key to select the options you require. 
    \nIf you have any issues, please don't hestitate to contact us via our above contact information."
    puts
    return_to_menu
end

#enter to continue method
def return_to_menu
    puts "Press enter to return to the menu".colorize(:red)
    $stdin.gets
    clear
    main_menu_header
    sleep(1)
end

#add colour TTY-Prompt menu. Returns the selected colour
def add_colour
    colour = TTY::Prompt.new.select("Please chose your colour:", active_color: :red) do |menu|
        menu.choice("Black")
        menu.choice("White")
        menu.choice("Red")
        menu.choice("Navy")
        menu.choice("Yellow")
    end
    return colour
end


def happy_to_continue
    puts
    yes_no = TTY::Prompt.new.select("Are you happy to proceed with your selections today?") do |menu|
        menu.choice("Yes")
        menu.choice("No")
    end
    return yes_no
end

#method to take the users order
def get_order(stock, order, vehicle)
    item = stock.select
    
    h = {"Model X"=> ModelX.new, "Model M" => ModelM.new, "Speedster" => Speedster.new, "Cybertruck" => Cybertruck.new}

    stock.display_model(h[item])
    (h[item]).add_colour(add_colour)

    order.add_vehicle(h[item],1)
end