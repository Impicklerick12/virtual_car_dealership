
require "tty-prompt"
#every vehicle has a type, model, features, price and colour
class Vehicle

    attr_accessor :model, :price, :features, :colour

    def initialize(model, price, features)
        @model = model
        @price = price
        @features = features
        @colour = colour
    end

    def display_model
        puts "Vehicle Model: #{@model}"
        puts "Price: $#{@price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    end

    # def add_model(model)
    #     @model << model
    #     return self
    # end

    # def select_model
    #     menu = []
    #     @models.each { |vehicle| menu.push(vehicle.model)}

    #     # this displays the menu using the TTY-Prompt gem. It returns the selected vehicle
    #     selection = TTY::Prompt.new.select("Choose a Testla Model:", menu, cycle: true, marker: '>', echo: false)
    #         @models.each { |model| return model if vehicle.model == selection }
    # end

    def display_features
        puts
        puts "Features:"
        @features.each do |feature|
            puts "- #{feature}"
        end
    end

end

class ModelX < Vehicle
    attr_reader :colour
    def initialize()
        super("Model X", 84990, ["Super Fast", "Looks awesome"])
        @colour = colour
    end
    
end

class ModelM < Vehicle
    attr_reader :colour
    def initialize()
        super("Model M", 79990, ["Super Fast", "Looks awesome"])
        @colour = colour
    end
    
end

class Speedster < Vehicle
    attr_reader :colour
    def initialize()
        super("Speedster", 200000, ["Super Fast", "Looks awesome"])
        @colour = colour
    end
    
end

class Cybertruck < Vehicle
    attr_reader :colour
    def initialize()
        super("Cybertruck", 39990, ["Super Fast", "Looks awesome"])
        @colour = colour
    end

end