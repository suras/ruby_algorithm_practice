
def intersect(arr1, arr2)

  intersection = []
  
  arr1_hash = Hash.new

  arr1.each do |num|  
    arr1_hash[num] = true
  end

  arr1_hash.each do |key, value|  
    if arr2.include?(key)
      intersection << key
    end
  end

  intersection

end


arr1 = [1, 2, 3, 4, 5]

arr2 = [9,5,4,3,10]

intersecton = intersect(arr1, arr2)

puts "Result:"

puts intersecton.inspect