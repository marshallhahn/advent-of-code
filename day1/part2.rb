require_relative 'data'

def three_window_counter(array)
    count = 0
    sum = sum_adjacent_numbers(array)
    
    (0...sum.length - 1).each do |i|
        if sum[i+1] > sum[i]
            count += 1
        end
    end

    count
end

def sum_adjacent_numbers(array) 
    sum = [] 
    
    (0...array.length - 2).each do |i| 
        first = array[i] 
        second = array[i+1] 
        third = array[i+2] 
        sum << (first + second + third) 
    end

    sum 
end

puts three_window_counter(ArrayData::ARRAY)