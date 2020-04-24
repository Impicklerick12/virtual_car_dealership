require_relative "helper_methods.rb"
require "tty-progressbar"

HEADER_LINE = "---------------------------------------------------------------"
HEADER_LENGTH = HEADER_LINE.length

def main_banner
    clear
    puts "88888888888 8888888888 .d8888b. 88888888888 888             d8888 "
    puts "    888     888       d88P  Y88b    888     888            d88888 "
    puts "    888     888       Y88b.         888     888           d88P888 "
    puts "    888     8888888    Y888b.       888     888          d88P 888 "
    puts "    888     888           Y88b.     888     888         d88P  888 "
    puts "    888     888             888     888     888        d88P   888 "
    puts "    888     888       Y88b  d88P    888     888       d8888888888 "
    puts "    888     8888888888  Y8888P      888     88888888 d88P     888 "
    puts
    sleep(1)
    puts "Welcome to Testla Motors!".center(HEADER_LENGTH)
    puts
    sleep(1)
end

def progress_bar
    clear
    puts "Please wait while we process your order."
    puts
    bar = TTY::ProgressBar.new("[:bar]", total: 50)
    50.times do
        sleep(0.1)
        bar.advance(1)
    end
end

def main_menu_header
    puts HEADER_LINE
    puts
    puts "___ ____ ____ ___ _    ____" .center(HEADER_LENGTH)
    puts "  |  |___ [__   |  |    |__| ".center(HEADER_LENGTH)
    puts "  |  |___ ___]  |  |___ |  | ".center(HEADER_LENGTH)
    puts
    puts "Welcome to Testla Motors!".center(HEADER_LENGTH)
    puts
    puts HEADER_LINE
    puts
end