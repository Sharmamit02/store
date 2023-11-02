def addition
    puts "Which numbers would you like to add?"
    @n1 = gets.chomp.to_i
    @n2 = gets.chomp.to_i
    sum = @n1 + @n2
    puts "The sum is... #{sum}"
end

def subtraction
    puts "Which numbers would you like to subtract?"
    @n1 = gets.chomp.to_i
    @n2 = gets.chomp.to_i
    diff =  @n1 - @n2 
    puts "The answer is... #{diff}"
end

def multiplication
puts "Which numbers would you like to multiply?"
    @n1 = gets.chomp.to_i
    @n2 = gets.chomp.to_i
    answer = @n1 * @n2
    puts "The answer is... #{answer}"
end

def division
    puts "Which numbers would you like to division?"
        @n1 = gets.chomp.to_i
        @n2 = gets.chomp.to_i
        answer = @n1 / @n2
        puts "The answer is... #{answer}"
    end

puts "Would you like to [a], [s],[m] or [d]?"
response = gets.chomp
if response == "a" then
    addition
end
if response == "s" then
    subtraction
end
if response == "m" then
    multiplication
end
if response == "d" then
    division
end