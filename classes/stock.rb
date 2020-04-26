require "tty-prompt"
require_relative "vehicle.rb"
require_relative "user.rb" #NEEDED?
require_relative "../methods/helper_methods.rb"
require_relative "../methods/banners.rb"

class Stock #shows the stock vehicles and add new vehicles to the stock

    def initialize
        @menu = Hash.new(0) #menu hash that contains all vehicles initialized in stock
    end

    def add_item(vehicle)
        @menu[vehicle.model] = vehicle
        return self
    end

     #method that includes the menu options for models
     def select
        model = TTY::Prompt.new.select("Please chose the Testla model you would like to purchase today:") do |menu|
            menu.choice("Model X")
            menu.choice("Model M")
            menu.choice("Speedster")
            menu.choice("Cybertruck")
        end
        clear
        return model
    end

    #method to display the selected vehicle when user chooses it
    def display_model(vehicle)
        main_menu_header
        vehicle.display_model
        vehicle.display_features
        puts
    end

end

# stock = Stock.new
# stock.add_item(Speedster.new("Yellow")).add_item(ModelM.new("Red")).add_item(ModelX.new("Black"))
# puts stock