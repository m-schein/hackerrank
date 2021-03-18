#https://www.hackerrank.com/challenges/icecream-parlor/submissions/code/192163205
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the icecreamParlor function below.
def icecreamParlor(m, arr)
  arr.each.with_index do |element1, index1|
    arr.each.with_index do |element2, index2|
      if((element1 + element2) == m && (index1 != index2))
        return [index1+1, index2+1]
      end
    end
  end

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.to_i

t.times do |t_itr|
    m = gets.to_i

    n = gets.to_i

    arr = gets.rstrip.split(' ').map(&:to_i)

    result = icecreamParlor m, arr

    fptr.write result.join " "
    fptr.write "\n"
end

fptr.close()
