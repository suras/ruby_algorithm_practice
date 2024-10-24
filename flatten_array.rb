def flatten_array(arr)
  result = []
  flatten(arr, result)
  result
end 


def flatten(arr, result)
  arr.each do |element|
   if(element.is_a?(Array))
      flatten(element, result) if arr.length > 0
   else
      result.push(element)   
   end
  end 
end 



arr = [[1],4,5,[88, [89, [90]], 55], 100]

result = flatten_array(arr)

puts "Result:"

puts result.inspect;