# Entry point of application





















class App

  def self.launch
    display_menu_1
  end

  def self.display_menu_1
    options = ["Customers" , "Admin " , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t    Welcome to Our Store "
    puts "\t\t\t================================="
    customer.rb
    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 
    print "\t\t\t Enter your choice : "
    choice = gets.chomp

    switcher(choice)

  end

  def self.display_menu_2
    options = ["Create Customers" , "List All" ,"Products" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t   Customers Login"
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 

    print "\t\t\t Enter your choice : "

    case(gets.chomp) 
    when '1'
      puts "\t\t\t=====Enter your data======"
      data = Hash.new
      
      print "\t\t\t Enter Name :"
      data[:name] = gets.chomp
      print "\t\t\t Enter Email :"
      data[:email] = gets.chomp
      print "\t\t\t Enter Phone :"
      data[:phone] = gets.chomp

      # evoking class function
      c = Customer.create(data)
      print "\t\tXXXXXXXX customer created successfully XXXXXXXX\n"
      print "\t\t\t Add another record?(yes/no) : "
      flag = gets.chomp 
      if flag == 'no'
        display_menu_2
      end  

    when '2'
      Customer.all
    when '3'
        puts "
        Milk = 30
        Hair Oil = 25
        Comb = 10
        Pen = 5
        Broom = 20
        Wiper = 50
        Soap = 15
        Shampoo = 60"
    when '4'
      exit
    else 
      puts "invalid choice"
    end 

  end

  def self.display_menu_3
    options = ["Admin Login " , "Add Products" , "Customer List" , "Exit"]
    system('clear')
    puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t    Admin Page"
    puts "\t\t\t================================="

    (options.size).times do |count|
      puts "  \t\t\t [#{count+1}]  #{options[count]}" 
    end 

    print "\t\t\t Enter your choice : "

    case(gets.chomp) 
    when '1'
        puts "\t\t\t=====Enter your data======"
        data = Hash.new
        
        print "\t\t\t Enter UserName :"
        data[:name] = gets.chomp
        print "\t\t\t Enter Password :"
        data[:Password] = gets.chomp
    
    when '2'
      puts "Add Product"
    when '3'
        Customer.all
    when '4'
      exit
    else 
      puts "invalid choice"
    end

  end


  def self.switcher(choice)
    case(choice)
    when '1'
      display_menu_2
    when '2'
      display_menu_3
    when '3'
      display_menu_4
    when '4'
      display_menu_1
    else 
      puts "\t\t\t xxxxxx You need to consult a eye doctor xxxxxx"
    end 
  end 

end 



