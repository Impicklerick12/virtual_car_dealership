require "colorize"
require "tty-prompt"
require "faker"
require_relative "./classes/stock.rb"
require_relative "./classes/order.rb"
require_relative "./classes/user.rb"
require_relative "./methods/helper_methods.rb"
require_relative "./methods/banners.rb"

#Main Application
def main

    dealership = Dealership.new 
    order = Order.new #order hash gets created
    stock = Stock.new #stock hash gets created

    main_banner

    # initialize_stock(stock)

    user_name = (ARGV.length > 0) && ARGV[0]
    if !user_name
        puts "To get going, please enter your name:"

        name_attempts = 0
        while name_attempts < 3
            user_name = gets.strip

            if user_name != ""
                clear
                break
            else
                name_attempts += 1
                if name_attempts == 3
                    clear
                    user_name = Faker::Name.first_name
                    break
                else
                    puts "Sorry, it looks like you didn't enter anything."
                end
            end
        end
    end

    main_banner_still
    sleep(1)

    puts
    puts "Welcome #{user_name.capitalize}! Press the enter key to contine to the main menu"
    $stdin.gets

    user = User.new(user_name.capitalize)

    continue = true

        while continue
            
            main_menu_header
            sleep(1)

            selection = TTY::Prompt.new.select("What would you like to do today #{user.name}?",  cycle: true, marker: '>', echo: false) do |menu|
                menu.choice('Start a new order', 1)
                menu.choice('View an existing order', 2)
                menu.choice('View Testla Motors Information/Help', 3)
                menu.choice('Exit', 4)

                case selection

                #new order
                when 1
                    main_menu_header
                    sleep(1)
                    get_order(stock, order, user)
                    progress_bar
                    order.print_order
                    return_to_menu
                    user.order += 1
                #existing order
                when 2
                    main_menu_header
                    sleep(1)
                    if user.order == 0
                        puts "Sorry #{user.name}, it looks like you haven't placed an order yet."
                        puts
                        return_to_menu
                    else
                        order.print_order
                        return_to_menu
                    end

                #Info/help
                when 3
                    main_menu_header
                    sleep(1)
                    help(dealership)
                #exit
                when 4
                    continue = false
                    farewell_header
                    clear
                    return continue
                end
            end
        
        end
    
end

main