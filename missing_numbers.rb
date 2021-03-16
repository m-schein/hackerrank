#https://www.hackerrank.com/challenges/missing-numbers/problem
#!/bin/ruby

require 'json'
require 'stringio'

# Complete the missingNumbers function below.
def score( array )
  hash = Hash.new(0)
  array.each{|key| hash[key] += 1}
  hash
end

def missingNumbers(arr, brr)
  response  = []
  hbrr = score(brr)
  harr = score(arr)
  hbrr.each do |chave1, valor1|
    harr.each do |chave2, valor2|
      if(valor1 > valor2 && chave1 == chave2)
        response << chave1
      end
    end
  end
  response.sort.uniq
end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

m = gets.to_i

brr = gets.rstrip.split(' ').map(&:to_i)

result = missingNumbers arr, brr

fptr.write result.join " "
fptr.write "\n"

fptr.close()
