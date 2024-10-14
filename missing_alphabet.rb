def missing_alphabets(str)

  alphapets = Hash.new

  ('a'..'z').each do |c|
    alphapets[c] = true
  end

  str.each_char do |s|
    if alphapets.key?(s)
       alphapets.delete(s)
    end
  end

  return alphapets.keys

end

str = "the quick brown box jumps over a lazy dog"

puts "Result: "

puts missing_alphabets(str);