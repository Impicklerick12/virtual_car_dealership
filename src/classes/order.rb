require_relative "../methods/helper_methods.rb"
require_relative "../methods/banners.rb"
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

    def total_price
        total = 0
        @order.each do |vehicle, quantity|
            total += vehicle.price * quantity
        end
        return total
    end

    def print_order
        clear
        main_banner_still
        puts
        puts "Your order confirmation"
        puts
        puts HEADER_LINE

        @order.each do |vehicle, quantity, colour|
            puts
            puts "Testla #{vehicle.model}                    Colour: #{vehicle.colour}"
            puts
            puts "Price: $#{vehicle.price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}                      Quantity: #{quantity}"
            puts
            puts HEADER_LINE
        end

        puts
        puts "Total: $#{total_price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse}"
        puts
    end

end