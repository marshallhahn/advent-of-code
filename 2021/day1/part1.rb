require_relative 'data'

def count_value_increases
    count = 0

    ArrayData::ARRAY.each_cons(2) do |first, second| 
        if (second > first) then
            count = count + 1
        end
    end

    puts count
end

count_value_increases