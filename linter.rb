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

class Linter

  def initialize(str)
      @str = str
  end


  def check

    stack = Stack.new

    @str.each_char do |c|

      if is_opening_char(c)
        stack.push(c)
      end

      if is_closing_char(c)
        opening_chr = stack.pop
        if opening_chr.nil?
          return "Error: Found #{c} without #{get_matching_closing_char(c)}"
        end
        matching_closing_chr = get_matching_closing_char(opening_chr)
        if c != matching_closing_chr
           return "Error: Expected #{matching_closing_chr} but found #{c}"  
        end 
      end

    end

    if(stack.read)
      return "Error: Found #{stack.read} without #{get_matching_closing_char(stack.read)}"
    end

    return "Sucess. No Error"

  end

  private 
  
  def is_opening_char(chr)
    return ["{", "[", "("].include?(chr)
  end

  def is_closing_char(chr)
    return ["}", "]", ")"].include?(chr)
  end

  def get_matching_closing_char(chr)
    return { "{" => "}", "[" => "]", "(" => ")" }[chr] 
  end

end


arg = ARGV[0]

result = Linter.new(arg).check

puts "Result:"

puts result