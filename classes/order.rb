
require_relative "vehicle.rb"
require_relative "stock.rb"

Class Order
    
    def initialize
        #order hash - vehicle object as key, model as value
        @order = order
        # @order = {}
    end

    #Add a vehicle to order hash when the user chooses a type, and model
    def add_vehicle(model, price, colour) #type is an object and not a string
        @order = [model, price, colour]
    end

    def total_price
        total = 0
        order.each do |model, price, colour|
            total += model.price
        end
        return total
    end

    def print_order
        puts "Your order is:"
        @order.each do |model, price, colour|
            puts "#{model} ----- #{colour} ------ #{price}"
        end
        puts "Total is $#{total_price}"
    end

end