puts "Enter 2 numbers:"
numbers = []
user_input = nil

x = 2
while x > 0
    user_input = gets.encode("UTF-8").chomp
    numbers << user_input.to_i
    x = x - 1
end

operations = ['+', '-', '*', '/']
puts "Enter operation  #{operations}"
operation = gets.encode("UTF-8").chomp

if operations.include? operation
    case operation
    when '+'
      begin
        result = numbers[0] + numbers[1]
      rescue => exception
        puts "An exception occurred because of " + exception.message
        exit
      end
        puts result
    when '-'
      begin
        result = numbers[0] - numbers[1]
      rescue => exception
        puts "An exception occurred because of " + exception.message
        exit
      end
        puts result
    when '*'
      begin
        result = numbers[0] * numbers[1]
      rescue => exception
        puts "An exception occurred because of " + exception.message
        exit
      end
      puts result
    when '/'
      begin
        result = numbers[0] / numbers[1]
      rescue => exception
        puts "An exception occurred because of " + exception.message
        exit
      end
      puts result
    end
end