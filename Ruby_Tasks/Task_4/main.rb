def degrees_celsius_in_fahrenheit(celsius)
  (celsius * 1.8) + 32
end

puts "Введите числовое значение градусов по °C\nЧтобы выйти из программы введите 'exit'"

loop do
  input = gets.chomp

  if input =~ /^-*[0-9,\.]+$/
    puts "#{degrees_celsius_in_fahrenheit(input.to_f)} градусов по °F"
  else
    break if input == 'exit'
    puts "Значение не верно и дожно содержать число"
  end
end
