require_relative 'data'

input1 = ArrayData::ARRAY
input2 = input1.dup

length = input1[0].length
i = 0

while input1.length > 1 || input2.length > 1
    if input1.length > 1
        one_input1 = input1.count do |n| 
            n[i] == "1"
        end

        zero_input1 = input1.count do |n|
            n[i] == "0"
        end

        output = "0"

        if one_input1 >= zero_input1
            output = "1"
        end
        
        input1 = input1.filter do |n| 
            n[i] == output
        end
    end

    if input2.length > 1
        one_input2 = input2.count do |n| 
            n[i] == "1"
        end
        zero_input2 = input2.count do |n| 
            n[i] == "0"
        end

        output = "1"
        if one_input2 >= zero_input2
            output = "0"
        end

        input2 = input2.filter do |n| 
            n[i] == output
        end
    end

    i = i + 1
end

o2_rating = input1[0].to_i(2)
c02_rating = input2[0].to_i(2)

puts o2_rating * c02_rating
