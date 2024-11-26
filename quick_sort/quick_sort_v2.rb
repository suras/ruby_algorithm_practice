class SortableArray

  attr_reader :array

  def initialize(arr)
    @array = arr
  end



  def sortable_array(left_pointer, right_pointer)
    
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
    

      array[pivot_index],array[left_pointer]  = left_pointer_value, pivot_value

      return left_pointer

  end


  # def self.sort(arr)

  #   puts "getting array #{arr.inspect}"

  #  return [] if(arr.length <= 1)
 
  #  left_pointer = SortableArray.new(arr).sortable_array(0, arr.length - 1)   

  #  puts "pointer array #{arr.inspect}"
  # #  puts "pointer  #{left_pointer}"


  #  left_array = arr[0, left_pointer]
  # #  puts "left array #{left_array.inspect}"

  # puts "left array sending before #{left_array.inspect} for #{arr.inspect}"
  # sort(left_array)

  #  puts "left array sending after #{left_array.inspect} for #{arr.inspect}"

  #  right_array = arr[left_pointer , (arr.length - 1)]
  # #  puts "right array #{right_array.inspect}"
  #  puts "right array sending #{right_array.inspect} and left arra is #{left_array.inspect}"
  #  sort(right_array)

  # #  puts "left array #{left_array.inspect}"
  # #  puts "right array #{right_array.inspect}"



  #  puts "final: #{(left_array + right_array).inspect}"

  # puts "------------------"


  
  # end

  def self.sort(arr)

    puts "getting array #{arr.inspect}"

   return arr if(arr.length <= 1)
 
   left_pointer = SortableArray.new(arr).sortable_array(0, arr.length - 1)   

   puts "pointer array #{arr.inspect}"
  #  puts "pointer  #{left_pointer}"

  # left_pointer = left_pointer +  1 if left_pointer == 0

   left_array = arr[0, left_pointer]
  #  puts "left array #{left_array.inspect}"

  # puts "left array sending before #{left_array.inspect} for #{arr.inspect}"

  #  puts "left array sending after #{left_array.inspect} for #{arr.inspect}"

   right_array = arr[left_pointer , (arr.length)]
  #  puts "right array #{right_array.inspect}"
  #  puts "right array sending #{right_array.inspect} and left arra is #{left_array.inspect}"
   return sort(left_array) + sort(right_array)

  #  puts "left array #{left_array.inspect}"
  #  puts "right array #{right_array.inspect}"



  #  puts "final: #{(left_array + right_array).inspect}"

  # puts "------------------"

  # return (left_array + right_array)


  
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

result = SortableArray.sort(arr)

# result = SortableArray.new(arr).sortable_array(0, arr.length - 1)



puts "Result:"

puts result.inspect