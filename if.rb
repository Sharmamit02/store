puts "\n\n\n\n"
    puts "\t\t\t================================="
    puts "\t\t\t          WELCOME USER"
    puts "\t\t\t================================="

puts "What is your name?"
name = gets.chomp
puts "What is your Employee Id?"
id = gets.chomp.to_i


puts "Hello #{name}"
puts "Employee Id = #{id}"
puts ""

id = 2
if (id < 2)
   puts "#{name} Complete project A"

else
   puts "Enjoy your day"
end

