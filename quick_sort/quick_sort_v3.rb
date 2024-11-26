class SortableArray

  attr_reader :array

  def initialize(arr)
    @array = arr
  end



  def partition!(left_pointer, right_pointer)
    
    pivot_index = right_pointer
    pivot_value = @array[pivot_index]

    left_pointer = 0
    right_pointer = (right_pointer - 1)


    while(true) 

        
      while(array[left_pointer] < pivot_value)
        left_pointer = left_pointer + 1
      end

    
      while(array[right_pointer] > pivot_value)
        right_pointer = right_pointer - 1
      end


      left_pointer_value = array[left_pointer]
      right_pointer_value = array[right_pointer]

      if(left_pointer >= right_pointer)
        break

      else
        array[left_pointer] = right_pointer_value
        array[right_pointer] = left_pointer_value

        left_pointer = left_pointer +  1

      end
    end
    

      array[pivot_index], array[left_pointer]  = left_pointer_value, pivot_value

      return left_pointer

  end

  def quicksort!(left_index, right_index)

    return if(right_index - left_index <= 0)

    pivot_index = partition!(left_index, right_index)

    quicksort!(left_index, pivot_index - 1)

    quicksort!(pivot_index + 1, right_index)

  
  end
  



end



arr = [0, 5, 2, 1, 6, 12, 3, 13]
# arr = [0, 5, 2,1,6,3]

# arr = [5, 2,1,6,3,0]
# 
# arr = [1,2,3,4,5,0]

# arr = [5,4,3,2,1]
# 
# arr =  [4,3, 5, 6]




# result = SortableArray.new(arr).sortable_array(0, arr.length - 1)

 result = SortableArray.new(arr)
 result.quicksort!(0, (arr.length - 1))

# result = SortableArray.new(arr).sortable_array(0, arr.length - 1)



puts "Result:"

puts result.array.inspect