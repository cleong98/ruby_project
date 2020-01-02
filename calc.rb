require "./Temperature"

start = true
while start    
  puts "Temperature calculator Start"
  calc = Temperature.new
  puts "Press C is Fahrenheit convert to Celsius."
  puts "Press F is Celsius convert to Fahrenheit."
  puts "Please any key for exit temperature calculator"
  select = gets.chomp.upcase
  # detect must c or f
    if select != "C" and select != "F"
      break
    end
    puts "Please insert your temperature"
    temp = gets.chomp
    isNum = /\A\d+\Z/
  # detect temperature must be number
    while !temp.match(isNum) 
    puts "Temperature accpets number only."
    temp = gets.chomp
    end
    # temperature to float
    temp = temp.to_f
    if select.upcase === "C"  
      result = calc.toCel(temp)
      # detect result is int or float
      result = result === result.to_i ? result.to_i.to_s << "°C" : result.round(2).to_s << "°C"
       puts result    
    elsif select.upcase === "F"
      result = calc.toFah(temp)
        # detect result is int or float
      result = result === result.to_i ? result.to_i.to_s << "°F" : result.round(2).to_s << "°F"
      puts result  
    end
  puts "Did you want to leave Temperature Calculator?"
  puts "press 0 is exit temperature calculator, press any key is continue."
  # detect isleave 
  isLeave = gets.chomp
  if isLeave === "0"
    start = false
  end

end

puts "You has exits Temperature Calculator"

