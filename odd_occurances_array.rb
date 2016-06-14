# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

# def solution(a)
#   # write your code in Ruby 2.2
#
#   uniques = a.uniq
#
#   uniques.each do |element|
#     return element if a.count(element) == 1
#   end
#   return 0
# end


# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  unpaired_element = 0

  # Binary XOR Operator copies the bit if it is set in one operand but not both.
  # A xor A cancels itself and B xor 0 is B. Therefore A xor A xor B xor C xor C is B.
  a.each do |element|
    unpaired_element ^= element
  end
  return unpaired_element
end