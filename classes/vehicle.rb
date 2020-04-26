require 'colorize'
require "tty-prompt"
require "test/unit"
require_relative "../methods/helper_methods.rb"


#every vehicle has a type, model, features, price and colour
class Vehicle

    attr_accessor :model, :price, :features, :colour

    def initialize(model, price, features)
        @model = model
        @price = price
        @features = features
        @colour = colour
    end

    #display model details after user has chosen
    def display_model
        puts "Vehicle Model: ".colorize(:red) +  "#{@model}"
        puts
        puts "Price: ".colorize(:red) + "$#{@price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    end

    #display models features
    def display_features
        puts
        puts "Features:".colorize(:red)
        puts
        @features.each do |feature|
            puts "- #{feature}"
        end
    end

    #method to add colour to model after they have chosen the model
    def add_colour(colour)
        @colour = colour
    end

end

#each model class, including inherited variables from vehicle classes including new values
class ModelX < Vehicle
    def initialize
        super("Model X", 84990, ["Super Fast", "Looks awesome"])
    end 
end

class ModelM < Vehicle
    def initialize
        super("Model M", 79990, ["Super Fast", "Looks awesome"])
    end 
end

class Speedster < Vehicle
    def initialize
        super("Speedster", 200000, ["Super Fast", "Looks awesome"])
    end  
end

class Cybertruck < Vehicle
    def initialize
        super("Cybertruck", 39990, ["Super Fast", "Looks awesome"])
    end
end