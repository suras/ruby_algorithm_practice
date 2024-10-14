def non_duplicate(str)
  char_count = Hash.new

  str.each_char do |char|
    if(char_count.key?(char))
       char_count[char] += 1
    else
      char_count[char] = 0   
    end
  end

  non_duplicate = []
  char_count.each do |key, value| 
    if(value == 0)
      non_duplicate << key
    end
  end

  puts non_duplicate;

end


str = "minimum"

puts "Result"

puts non_duplicate(str)