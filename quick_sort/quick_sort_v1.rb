def sortable_array(arr)
  
  pivot = arr.length - 1
  pivot_value = arr[pivot]

  left_pointer = 0
  right_pointer = arr.length - 2

  count  = 0

  while(right_pointer >= 0 && left_pointer < arr.length - 1) 

    # if(count == 5)
    #   break
    # end
    # 
      
    while(arr[left_pointer] < pivot_value && left_pointer < (arr.length - 1))
      left_pointer = left_pointer + 1
    end


    left_pointer_value = arr[left_pointer]

    if(left_pointer ==  right_pointer)
      puts "same exchange"
      puts "left pointer #{left_pointer}"
      puts "right pointer #{right_pointer}"

      arr[pivot] = left_pointer_value
      arr[left_pointer] = pivot_value
      return arr

    end
    
    while(arr[right_pointer] > pivot_value && right_pointer >= 0)
      right_pointer = right_pointer - 1
    end

    right_pointer_value = arr[right_pointer]

    puts "-----------------------------------------"

    puts "left pointer value #{left_pointer_value}"
    puts "right pointer value #{right_pointer_value}"

    puts "left pointer #{left_pointer}"
    puts "right pointer #{right_pointer}"

    # return arr if left_pointer == arr.length - 1


    if(left_pointer !=  right_pointer && (left_pointer < arr.length - 1))

      puts "Interchange "

      arr[left_pointer] = right_pointer_value
      arr[right_pointer] = left_pointer_value

      puts arr.inspect

      left_pointer = left_pointer +  1

    end


  end
  
  return arr

end

# arr = [0, 5, 2, 1, 6, 12, 3, 13]
arr = [0, 5, 2,1,6,3]

# arr = [5, 2,1,6,3,0]


result = sortable_array(arr)

puts "Result:"

puts result.inspect

