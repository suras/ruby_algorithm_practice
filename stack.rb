class Stack

  def initialize()
     @arr = []
  end

  def read
    @arr.last
  end

  def push(item)
    @arr << item
  end  

  def pop
    @arr.pop
  end

end  


str = ARGV[0]

stack = Stack.new

str.each_char do |c|
  stack.push(c)
end

reverse_string = ""

while(stack.read != nil)
  reverse_string += stack.pop
end

puts reverse_string;
