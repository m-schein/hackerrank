#https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the rotLeft function below.
def rotLeft(array, tamRotacao)
    arrayAux = []
    arrayAux2 = []
  array.each.with_index do |element, index|
        if index >= tamRotacao 
            arrayAux << element
        end
        if index < tamRotacao
            arrayAux2 << element
        end
    end
 (arrayAux+arrayAux2)
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

nd = gets.rstrip.split

n = nd[0].to_i

d = nd[1].to_i

a = gets.rstrip.split(' ').map(&:to_i)

result = rotLeft a, d

fptr.write result.join " "
fptr.write "\n"

fptr.close()
