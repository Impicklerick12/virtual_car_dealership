require "tty-prompt"
require_relative "vehicle.rb"
require_relative "user.rb"

class ModelX < Vehicle
    # attr_reader :colour
    def initialize()
        super("Model X", 84990)
        # @colour = colour
    end
    
end

class ModelM < Vehicle
    # attr_reader :colour
    def initialize()
        super("Model M", 79990)
        # @colour = colour
    end
    
end

class Speedster < Vehicle
    # attr_reader :colour
    def initialize()
        super("Speedster", 200000)
        # @colour = colour
    end
    
end

class Cybertruck < Vehicle
    # attr_reader :colour
    def initialize()
        super("Cybertruck", 39990)
        # @colour = colour
    end

end

class Stock #shows the stock vehicles and add new vehicles to the stock

    def initialize
        @menu = Hash.new(0) #vehicle.model = key, vehicle = value?
    end

    def add_item(vehicle)
        @menu[vehicle.model] = vehicle
        return self
    end

    def select
        model = TTY::Prompt.new.select("Please chose the Testla model you would like to purchase today:") do |menu|
            menu.choice("Model X")
            menu.choice("Model M")
            menu.choice("Speedster")
            menu.choice("Cybertruck")
        end
        return model
    end

    def extras
        puts "Would you like to add any optional extras? Y/N \n"
        yes_or_no = gets.chomp.downcase
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
end

# stock = Stock.new
# stock.add_item(Speedster.new("Yellow")).add_item(ModelM.new("Red")).add_item(ModelX.new("Black"))
# puts stock