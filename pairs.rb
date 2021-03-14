# https://www.hackerrank.com/challenges/pairs/problem
#!/bin/ruby
require 'json'
require 'stringio'

# Complete the pairs function below.
def pairs(k, arr)
 pair = 0
 i = 0
 j = 1
 n = arr.length
 diff = 0
 arrs = arr.sort
  while j < n do
    diff  = arrs[j] - arrs[i]
    if diff == k
      pair += 1
      j += 1
    elsif diff > k
      i += 1
    elsif diff < k 
      j += 1
    end
  end
  return pair
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nk = gets.rstrip.split

n = nk[0].to_i

k = nk[1].to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = pairs k, arr

fptr.write result
fptr.write "\n"

fptr.close()
