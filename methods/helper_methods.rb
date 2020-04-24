require "tty-prompt"
require_relative "../classes/vehicle.rb"
require_relative "../classes/dealership.rb"
require_relative "../classes/stock.rb"

# def initialize_stock(stock)

#     stock.add_item(Speedster.new).add_item(ModelM.new).add_item(ModelX.new).add_item(Cybertruck.new)

# end

def clear
    return system("clear")
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
            menu.choice('Carbon Wheels')
            menu.choice('Oak Wood Interior')
            menu.choice('Self-Driving Capability')
            menu.choice('Ludicrously Fast Mode')
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
    
    #ADD IN TESTLA MOTORS BANNER HERE!
    stock.display_model(h[item])
    (h[item]).add_colour(add_colour)

    order.add_vehicle(h[item],1)

    e = {"Carbon Wheels" => 1500, "Oak Wood Interior" => 1500, "Self-Driving Capability" => 7000, "Luicrously Fast Mode" => 3000}
    extras

end