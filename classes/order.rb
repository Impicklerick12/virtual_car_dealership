
require_relative "vehicle.rb"
require_relative "stock.rb"

class Order
    
    def initialize
        #order hash - vehicle object as key, model as value
        @order = Hash.new(0)
        # @order = {["speedster", 2000000, "Red"]}
    end

    #Add a vehicle to order hash when the user chooses a model and colour
    def add_vehicle(vehicle, quantity) #type is an object and not a string
        @order[vehicle] += quantity 
    end

    def add_colour
        #STILL NEEED TO WORK ON THIS!
		
    end

    def total_price
        total = 0
        @order.each do |vehicle, quantity|
            total += vehicle.price * quantity
        end
        return total
    end

    def print_order
        puts "Your order is:"
        @order.each do |vehicle, quantity|
            puts "Testla #{vehicle.model} ----- Price: $#{vehicle.price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} ---- Quantity: #{quantity}"
        end
        puts "Total is $#{total_price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
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