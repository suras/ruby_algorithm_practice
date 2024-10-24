def build_subdomains(length)
  
  chars = ('a'..'z')
 
  char_array = chars.to_a

  return char_array if length == 1
  raise "error" if length < 1 

  result = []

  loop_arr = char_array

  
  (1..length-1).each do |i|
    
    loop_result = []  

    loop_arr.each do |j|
            
      chars.each do |k|

        loop_result << j + k 
         
      end

    end
    result.concat(loop_result)

    loop_arr = loop_result
 
  end
  result

end


result = build_subdomains(2)

puts "result"

puts result.inspect