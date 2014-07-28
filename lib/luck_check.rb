def luck_check(number_string)

if number_string.to_i == 0
  "Please enter a valid number"
else

  number_array = number_string.split("").map(&:to_i)

    if number_string.length.odd?
        # number_array = number_string.split("").to_i
        number_array.delete_at(number_string.length/2) # e.g., [1,2,2,1]
        first_half = number_array[0..(number_array.count/2)-1]
        second_half = number_array[number_array.count/2..-1]
    else
        first_half = number_array[0..(number_string.length/2)-1]
        second_half = number_array[number_string.length/2..-1]
    end

  first_sum = first_half.inject(:+)
  second_sum = second_half.inject(:+)

    if first_sum == second_sum
      true
    else
      false
    end
  end
end

# puts luck_check(56328116)
