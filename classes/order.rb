Class Order
    
    def initialize
        #order hash - vehicle object as key, model as value
        @order = Hash.new(0)
        # @order = {}
    end

    #Add a vehicle to order hash when the user chooses a type, and model
    def add_vehicle(type, model) #type is an object and not a string
        @order[type] = model
    end

    def total_price
        total = 0
        order.each do |type, model|
            total += model.price
        end
        return total
    end

    def print_order
    end

end