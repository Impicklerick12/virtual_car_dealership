require "tty-prompt"
require_relative "vehicle.rb"
require_relative "user.rb"
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
        menu = [
            "Model X",
            "Model M",
            "Speedster",
            "Cybertruck",
            {name: "Model 4", disabled: "(Unavailable)"},
            {name: "Space X Shuttle", disabled: "(Unavailable)"}
        ]

        model = TTY::Prompt.new.select("Please chose the Testla model you would like to purchase today:", menu, active_color: :red)
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