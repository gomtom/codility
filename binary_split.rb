


def solution(n)
  # write your code in Ruby 2.2

  puts n

  binary = n.to_s(2)

  puts binary

  zeroes = binary.split('1')

  puts zeroes

end

solution(1041)