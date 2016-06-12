# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n)
  # write your code in Ruby 2.2
  
  # convert the integer to binary a string and remove any zeros not surrounded by 1's
  binary = n.to_s(2).slice(/1.*1/)
  
  # split the binary gaps
  binary.nil? ? zeros = [] : zeros = binary.split(/1/)
    
  # no binary gaps? return 0 otherwise return the largest gap    
  zeros.empty? ? (return 0) : (return zeros.map { |zeros| zeros.length }.max)
end
