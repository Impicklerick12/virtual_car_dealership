require_relative "vehicle.rb"

class ModelX < Vehicle
    attr_reader :colour
    def initialize(colour)
        super("Model X", 84990)
        colour = colour
    end
    
end

class ModelM < Vehicle
    attr_reader :colour
    def initialize(colour)
        super("Model M", 79990)
        colour = colour
    end
    
end

class Speedster < Vehicle
    attr_reader :colour
    def initialize(colour)
        super("Speedster", 200000)
        colour = colour
    end
    
end

class Cybertruck < Vehicle
    attr_reader :colour
    def initialize(colour)
        super("Cybertruck", 39990)
        colour = colour
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

    def to_s
        stock_string = "Our current stock: \n"
        @menu.each do |name, model|
            stock_string += "#{name} ---- $#{model.price.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse} \n"
        end
        return stock_string.chomp
    end
end

# stock = Stock.new
# stock.add_item(Speedster.new("Yellow")).add_item(ModelM.new("Red")).add_item(ModelX.new("Black"))
# puts stock