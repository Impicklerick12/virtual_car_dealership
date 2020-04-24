require_relative "../methods/helper_methods.rb"
require_relative "vehicle.rb"
require_relative "stock.rb"

class Order
    
    def initialize
        #order hash - vehicle object as key, model as value
        @order = Hash.new(0)
    end

    #Add a vehicle to order hash when the user chooses a model
    def add_vehicle(vehicle, quantity)
        @order[vehicle] += quantity 
    end

    def add_extras

    end

    def total_price
        total = 0
        @order.each do |vehicle, quantity|
            total += vehicle.price * quantity
        end
        return total
    end

    def print_order
        clear
        #TESTLA BANNER HERE
        puts "Your Testla order confirmation"
        puts
        puts "=" * 55
        @order.each do |vehicle, quantity, colour|
            puts
            puts "Testla #{vehicle.model} ----- Colour: #{vehicle.colour}"
            puts
            puts "Price: $#{vehicle.price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} ---- Quantity: #{quantity}"
            puts
            puts "-" * 55
        end
        puts
        puts "Total: $#{total_price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
        puts
    end

end

#testing the order class
#SUCCESSFUL!
#added tests to spreadsheet
# order = Order.new
# # order.add_vehicle(Vehicle.new("Speedster", 200000, "Red"), 1)
# # order.add_vehicle(Vehicle.new("Model X", 84990, "Black"), 2)
# order.add_vehicle(Speedster.new("Yellow"), 2)
# order.print_order