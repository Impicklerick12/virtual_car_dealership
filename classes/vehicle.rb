
#every vehicle has a type, model, features, price and colour
class Vehicle

    attr_reader :model, :price

    def initialize(model, price)
        @model = model
        # @features = features
        @price = price
        # @colour = colour
    end

    def display_type
    end

    def display_features
    end

end