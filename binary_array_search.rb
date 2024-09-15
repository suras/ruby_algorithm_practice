class BinarySearch


  def search(array, search_input)
    max_array_length = array.length - 1
    min_array_length = 0

    count = 0;
    while max_array_length >= min_array_length
       mid_array_index = (max_array_length+min_array_length)/2
       count = count+1
       puts "step: #{count}"  
      #  puts "max array length "+max_array_length.to_s
      #  puts "min array length "+min_array_length.to_s
    
       if(array[mid_array_index] == search_input)
         return array[mid_array_index]
       elsif(array[mid_array_index] > search_input)
         max_array_length = mid_array_index - 1
       else
         min_array_length =  mid_array_index + 1
       end

    end   

  end


end

input_array = [1,2,3,4,5,6,7,8,9, 21]

search_input = ARGV[0]

puts "Input for search array #{search_input}"


binary_search = BinarySearch.new

result =  binary_search.search(input_array, search_input.to_i)

puts "Search result #{result}"