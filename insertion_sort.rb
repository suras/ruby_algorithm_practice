def insertion_sort(arr)
  i = 0
  while(i < (arr.length-1))
    current_element = arr[i]
    temporary_element = arr[i+1]
    if(temporary_element < current_element)
      arr[i+1] = current_element
      j = i
      while(j >= 0)
        if(j == 0)
          arr[j] = temporary_element
          break;
        end  
        if(arr[j-1] > temporary_element)
          arr[j] = arr[j-1]
          j = j - 1
        else
          arr[j] = temporary_element
          break;  
        end
      end  
    end
    i = i + 1
  end
  arr
end


input = ARGV[0]

puts "Input #{input}"

input_array = input.split(",").map { |s| s.strip.to_i }

result = insertion_sort(input_array)

puts "Insertion Sort Result: #{result}"

