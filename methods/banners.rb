require "tty-progressbar"
require "colorize"
require_relative "helper_methods.rb"

HEADER_LINE = "---------------------------------------------------------------"
HEADER_LENGTH = HEADER_LINE.length

def main_banner
    clear
    puts "88888888888 8888888888 .d8888b. 88888888888 888             d8888 ".colorize(:red)
    sleep(0.3)
    puts "    888     888       d88P  Y88b    888     888            d88888 ".colorize(:red)
    sleep(0.3)
    puts "    888     888       Y88b.         888     888           d88P888 ".colorize(:red)
    sleep(0.3)
    puts "    888     8888888    Y888b.       888     888          d88P 888 ".colorize(:red)
    sleep(0.3)
    puts "    888     888           Y88b.     888     888         d88P  888 ".colorize(:red)
    sleep(0.3)
    puts "    888     888             888     888     888        d88P   888 ".colorize(:red)
    sleep(0.3)
    puts "    888     888       Y88b  d88P    888     888       d8888888888 ".colorize(:red)
    sleep(0.3)
    puts "    888     8888888888  Y8888P      888     88888888 d88P     888 ".colorize(:red)
    puts
    sleep(1)
    puts "Welcome to Testla Motors!".center(HEADER_LENGTH)
    puts
    sleep(2)
end

def main_banner_still
    clear
    puts "88888888888 8888888888 .d8888b. 88888888888 888             d8888 ".colorize(:red)
    puts "    888     888       d88P  Y88b    888     888            d88888 ".colorize(:red)
    puts "    888     888       Y88b.         888     888           d88P888 ".colorize(:red)
    puts "    888     8888888    Y888b.       888     888          d88P 888 ".colorize(:red)
    puts "    888     888           Y88b.     888     888         d88P  888 ".colorize(:red)
    puts "    888     888             888     888     888        d88P   888 ".colorize(:red)
    puts "    888     888       Y88b  d88P    888     888       d8888888888 ".colorize(:red)
    puts "    888     8888888888  Y8888P      888     88888888 d88P     888 ".colorize(:red)
    puts
    puts "Welcome to Testla Motors!".center(HEADER_LENGTH)
    puts
end

# pastel = Pastel.new
# red = pastel.on_red(" ")
# black = pastel.on_black(" ")

def progress_bar
    clear
    puts
    puts
    puts
    puts
    puts "     Please wait while we process your order."
    puts
    puts
    bar = TTY::ProgressBar.new("[:bar]", total: 50)
    50.times do
        sleep(0.1)
        bar.advance(1)
    end
end

def main_menu_header
    clear
    puts HEADER_LINE
    puts
    puts "___ ____ ____ ___ _    ____" .center(HEADER_LENGTH).colorize(:red)
    puts "  |  |___ [__   |  |    |__| ".center(HEADER_LENGTH).colorize(:red)
    puts "  |  |___ ___]  |  |___ |  | ".center(HEADER_LENGTH).colorize(:red)
    puts
    puts "Welcome to Testla Motors!".center(HEADER_LENGTH)
    puts
    puts HEADER_LINE
    puts
end