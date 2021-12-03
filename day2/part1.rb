require_relative 'data'

hash = Hash.new(0)
ArrayData::ARRAY.map(&:split).each do |direction, amount|
  hash[direction] += amount.to_i
end

p hash['forward'] * (hash['down'] - hash['up'])