require "tty-prompt"
require_relative "vehicle.rb"
require_relative "user.rb"
require_relative "../methods/helper_methods.rb"

class Stock #shows the stock vehicles and add new vehicles to the stock

    def initialize
        @menu = Hash.new(0) #vehicle.model = key, vehicle = value?
    end

    def add_item(vehicle)
        @menu[vehicle.model] = vehicle
        return self
    end

    def display_model(vehicle)
        vehicle.display_model
        vehicle.display_features
        puts
    end

    # def display_stock
    #     @menu.each do |model, price|
    #         puts model
    #     end
    # end

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

    # def add_colour(colour)
    #     @menu[vehicle.colour] += colour
    # end
end

# stock = Stock.new
# stock.add_item(Speedster.new("Yellow")).add_item(ModelM.new("Red")).add_item(ModelX.new("Black"))
# puts stock