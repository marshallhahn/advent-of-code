require_relative 'data'

horizontal_position = 0
aim = 0
depth = 0

ArrayData::ARRAY.map(&:split).each do |direction, amount|
  a = amount.to_i
  if direction == 'forward'
    horizontal_position += a
    depth += aim * a
  end
  aim += a if direction == 'down'
  aim -= a if direction == 'up'
end

p horizontal_position * depth