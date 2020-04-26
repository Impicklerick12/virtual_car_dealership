require "faker"
require_relative "../methods/banners.rb"

class Dealership

    def initialize
        @name = "Testla Motors"
        @address = Faker::Address.full_address
        @phone = Faker::PhoneNumber.phone_number_with_country_code
        @email = "elon@testlamotors.com"
        # @about = "" #information about the dealership
    end

    def display_info
    end

    def contact_info
        puts "Adress: ".colorize(:red) + "#{@address}"
        puts "Phone Number: ".colorize(:red) + "#{@phone}"
        puts "Email: ".colorize(:red) + "#{@email}"
    end

end