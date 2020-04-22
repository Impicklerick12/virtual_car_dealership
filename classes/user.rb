#user class holds the user information, such as their name and any orders placed
class InvalidNameError < StandardError
end

def validate_name(user_name)
	
	raise InvalidNameError, "Name must not be empty" if user_name == ""
	user_name
	
end

class User
    attr_accessor :order, :user_name
	
	def initialize(user_name)
		begin
			
        @user_name = user_name
        @order = nil
			
		rescue InvalidNameError => e
			puts "Error: #{e.message}"
		end
    end
	
	def name
		return @user_name
	end
	
end