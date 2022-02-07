puts "Введите цвет светофора (red, yellow, green)\nЧтобы выйти из программы введите 'exit'"

def traffic_light(light)
  case light
  when 'red' then 'стоять'
  when 'yellow' then 'ждать'
  when 'green' then 'идти'
  else 'Значение дожно быть только red, yellow либо green' if light != 'exit'
  end
end

input = 0

while input != 'exit'
  input = gets.chomp
  puts traffic_light(input)
end
