# solution for the codility demo test


# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(a)
  # write your code in Ruby 2.2

  n = a.size
  puts "n: #{n}"
  total_sum = a.reduce(:+)
  count = 0

  equilibrium_index = false

  equilibrium_indicies = []

  # cycle through each element in the array
  a.each do |value|

    lower_sum = 0
    higher_sum = 0

    # for each integer, sum the lower and higher indicies
    for i in 0..(a.index(value - 1))
      lower_sum += a[i]
    end

    puts "lower_sum: #{lower_sum}"

    puts "a.index(value): #{a.index(value)}"

    for n in (a.index(value) + 1)..(n-1)
      puts "\n"
      puts n
      puts "\n"
      higher_sum += a[n]
    end

    puts "higher_sum: #{higher_sum}"

    if lower_sum == higher_sum
      equilibrium_indicies << a.index(value)
      equilibrium_index = true
    end

  end

  puts "equilibrium_index: #{equilibrium_index}"
  puts "equilibrium_indicies: #{equilibrium_indicies}"

  equilibrium_index ? (return equilibrium_indicies.first) : (return -1)
end

