require_relative "./classes/stock.rb"
require_relative "./classes/order.rb"
require_relative "./classes/user.rb"
require_relative "./helper_methods/helper_methods.rb"

#Main Application
def main
# Main Application 
    
order = Order.new #order hash gets created
stock = Stock.new #stock hash gets created
user = User.new(get_name) #user name gets created

initialize_stock(stock)
continue = true
    
    while continue
        
        menu
        validate_answer
        # get_order(stock,order,user)
        
    end
    
end

main