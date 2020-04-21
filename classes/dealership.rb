Class Dealership

    def initialize
        @name = "Testla Car Dealership"
        @address = "123 Silicone Valley Drv, Future Town"
        @phone = "13 FUTURE"
        @email = "elon@testladealership.com"
        @about = "" #information about the dealership
    end

    def display_info
    end

    def contact_info
        puts "Adress: #{@address}"
        puts "Phone Number: #{@phone}"
        puts "Email: #{@email}"
    end

end