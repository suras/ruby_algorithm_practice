def bubble_sort(arr)
  return arr if(arr.nil? || arr.length <= 1)

  sorted = false
  length = arr.length - 1
  until sorted
    i = 0;
   sorted = true
   while i < length 
      a1, a2 = arr[i], arr[i+1]
      if(a1 > a2)
        arr[i] = a2
        arr[i+1] = a1
        sorted = false
      end 
      i = i+1 
    end
    length = length - 1
  end 
   arr
end

input =  ARGV[0]

puts "Input for Bubble Sort #{input}"

result = bubble_sort(input.split(',').map { |s| s.strip.to_i })

puts "Bubble Sort Result: #{result}"

