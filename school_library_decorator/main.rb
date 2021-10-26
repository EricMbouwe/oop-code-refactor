#!/usr/bin/ruby

require "./book"
require "./classroom"
require "./person"
require "./rental"
require "./student"
require "./teacher"


def main
  app = App.new()

  option = nil

  puts "Welcome to School Library App!\n\n"
  while option != 7
    puts "Please choose any option by entering a number:\n
    1 - List all books \n 2 - List all people \n 3 - Create a person \n
    4 - Create a book \n 5 - Create a rental \n 6 - List all rentals for a given person id \n
    7 - Exit"
    option = gets.chomp

    case option
    when "1"
      app.list_books
    when "2"
      app.list_people
    when "3"
      app.create_person
    when "4"
      app.create_book
    when "5"
      app.create_rental
    when "6"
      app.list_all_rentals_for_person_id
    when "7"
      app.app_exit(option)
    end

    puts "\n"
  end
end

main()
