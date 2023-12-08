class Person
    attr_accessor :name, :phone, :email
  
    def initialize(name, phone, email)
      @name = name
      @phone = phone
      @email = email
    end
  
    def self.create(data)
      new_person = Person.new(data[:name], data[:phone], data[:email])
      puts "Person created: #{new_person.name}, #{new_person.phone}, #{new_person.email}"
      new_person
    end
  end
  
  class App
    @@contact = {}  # Move the contact hash outside the methods
  
    def self.launch
      display_menu_1
    end
  
    def self.display_menu_1
      system('clear')  # Clear the screen before displaying the menu
      options = ["Create New", "Find Contact", "Exit"]
      puts "\n\n\n\n"
      puts "\t\t\t================================="
      puts "\t\t\t          CONTACT BOOK"
      puts "\t\t\t================================="
  
      options.each_with_index do |option, index|
        puts "  \t\t\t [#{index + 1}]  #{option}"
      end
  
      print "\t\t\t Enter your choice : "
  







      
      case gets.chomp
      when '1'
        create_contact
      when '2'
        find_contact
      when '3'
        exit
      else
        puts "Invalid choice. Please enter a valid option."
        display_menu_1
      end
    end
  
    def self.create_contact
      system('clear')  # Clear the screen before entering new contact details
      puts "\t\t\t=====Enter Details======"
      data = {}
  
      print "\t\t\t Enter Name :"
      data[:name] = gets.chomp.downcase
      print "\t\t\t Enter Phone :"
      data[:phone] = gets.chomp
      print "\t\t\t Enter Email :"
      data[:email] = gets.chomp
  
      created_person = Person.create(data)
  
      # Add the new contact to the existing contact hash
      @@contact[data[:name]] = "Phone No.:#{data[:phone]} , Email: #{data[:email]}"
  
      puts "\t\t\tContact created successfully."
      print "\t\t\t Add another record? (yes/no) : "
      flag = gets.chomp
      display_menu_1 if flag.downcase == 'no'
    end
  
    def self.find_contact
      system('clear')  # Clear the screen before finding contact details
  
      loop do
        print "Enter the name to find contact details: "
        name = gets.chomp.downcase
  
        if @@contact.key?(name)
          puts "#{name.capitalize}, Contact Detail: #{@@contact[name]}"
        else
          puts "#{name.capitalize}, No Detail found in Contact List"
        end
  
        print "Do you want to check another contact? (yes/no): "
        choice = gets.chomp.downcase
  
        break if choice != "yes"
      end
  
      display_menu_1
    end
  end
  
  App.launch
  