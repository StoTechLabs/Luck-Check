def luck_check (number)
  if number.to_s.length != 6
    true
  else number_array = number.to_s.split("")
        first_half = number_array[0..2]
        # first_half.map(&:to_i).inject(:+)
        first_half
  end
end
