# you can write to stdout for debugging purposes, e.g.
# puts "this is a debug message"

def solution(n, a)
  # write your code in Ruby 2.2

  # create an empty array of counters
  counters = Array.new(n, 0)

  # iterate through each operation
  (0...a.length).each do |k|


    if (a[k] >= 1) && (a[k] <= n)

      counters[a[k] - 1] += 1

    elsif a[k] == (n + 1)
      max = counters.max
      counters = Array.new(n, max)
    end


  end

  return counters
end