def selection_sort(arr)
   
  arr.each_with_index do |e, i|
   puts "i :"+i.to_s
   smallest_element = arr[i]
   smallest_position  = i
   new_smallest_element = arr[i]
   new_exchanged_position = i
   i = i+1
   while( i < arr.length) do
     if(smallest_element > arr[i])
         new_smallest_element = arr[i]
         new_exchanged_position = i
     end
     puts "new smallest elemetn #{new_smallest_element}"
     i = i+1
   end
   if(smallest_element != new_smallest_element)
        arr[smallest_position] = new_smallest_element
        arr[new_exchanged_position] = smallest_element
   end
  end
  arr
end  


input = ARGV[0]

puts "Input #{input}"

input_array = input.split(",").map { |s| s.strip.to_i }

result = selection_sort(input_array)

puts "Selection Sort Result: #{result}"

