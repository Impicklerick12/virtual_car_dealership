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

    def display_model
        puts "Vehicle Model: ".colorize(:red) +  "#{@model}"
        puts
        puts "Price: ".colorize(:red) + "$#{@price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
    end

    def display_features
        puts
        puts "Features:".colorize(:red)
        puts
        @features.each do |feature|
            puts "- #{feature}"
        end
    end

    def add_colour(colour)
        @colour = colour
    end

end

class ModelX < Vehicle
    # attr_reader :colour
    def initialize()
        super("Model X", 84990, ["Super Fast", "Looks awesome"])
        # @colour = colour
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
    # attr_reader :colour
    def initialize()
        super("Speedster", 200000, ["Super Fast", "Looks awesome"])
        # @colour = colour
    end
    
end

class Cybertruck < Vehicle
    # attr_reader :colour
    def initialize()
        super("Cybertruck", 39990, ["Super Fast", "Looks awesome"])
        # @colour = colour
    end

end