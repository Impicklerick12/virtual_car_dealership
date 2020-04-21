require_relative "./classes/stock.rb"
require_relative "./classes/order.rb"

#Main Application
def initialize_stock(stock)
    stock.add_item(Speedster.new("Black")) 
    stock.add_item(ModelM.new("Black"))
    stock.add_item(ModelX.new("Black"))
    stock.add_item(Cybertruck.new("Black"))
end


order = Order.new #order hash gets created
stock = Stock.new #stock hash gets created
initialize_stock(stock)

def get_order(stock, order)
    while 1
        system("clear")
        puts stock
        h = {"Model X"=> ModelX.new("Black"), "Model M" => ModelM.new("Black"), "Speedster" => Speedster.new("Black"), "Cybertruck" => Cybertruck.new("Black")}
        puts "Please enter your choice : 1 for Model X , 2 for Model M , 3 for Speedster, 4 for Cybertruck, 0 to quit"
        item = gets.chomp.to_i
        
        #case statement?
        item = "Model X" if item == 1
        item = "Model M" if item == 2
        item = "Speedster" if item == 3
        item = "Cybertruck" if item == 4

        return "Thank you for stopping by Testla Motors! We hope to see you again soon" if item == 0

        if h.keys.include?(item) == true
            # puts "How many would you like ? "
            count = 1
            #CODE GETTING STUCK AT THIS POINT. `add_item': wrong number of arguments (given 2, expected 1) (ArgumentError)
            stock.add_item(h[item],count)
        else
            puts "Sorry we do not stock that"
        end

        #POTENTIAL TO ADD IN OPTIONAL EXTRAS HERE?
        puts "Would you like to order anything else ? (y)es or (n)o \n"
        yes_or_no = gets.chomp
        if yes_or_no == "n"
            # order.total_selling_price
            order.print_order
            return
        end

    end # end of that while 1 

end

puts get_order(stock,order)