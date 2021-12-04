require_relative 'data'

def binary_to_decimal(binary)
    binary.reverse.chars.map.with_index do |digit, index|
        digit.to_i * 2**index
    end.sum
end

def calculate_max_min(array, type)
    if type === 'max'
        array.max_by do |i| 
            array.count(i)
        end
    else
        array.min_by do |i| 
            array.count(i)
        end
    end
end

def lines_to_columns
    lines = Hash.new([])
    columns = Hash.new("")
    
    ArrayData::ARRAY.each_with_index do |number, index| 
        number_split = number.split("")
        lines[index] += number_split
    end

    lines.each_with_index do |line, index|
        number_of_columns = line[1].length
        (0...number_of_columns).each do | column |
            columns[column] += line[1][column]
        end
    end

    columns
end

def find_common_bit(type)
    array = []
    lines_to_columns.each_with_index do |column, index|
        column_split = column[1].split("")
        common = calculate_max_min(column_split, type)
        array << common
    end

    string = array.join('')
    binary_to_decimal(string)
end

gamma_rate = find_common_bit('max')
epsilon_rate = find_common_bit('min')
power_consumption = gamma_rate * epsilon_rate

p power_consumption