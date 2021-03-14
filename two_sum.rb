#https://leetcode.com/problems/two-sum/

def calc_position(head, ntail, nums_aux)
  result = [];
  #coleta os índices dos elementos encontrados no array principal 
  nums_aux.each.with_index do |element, index|
    if(head == element || ntail == element)
      result << index
    end
    if(result.length == 2)
      return result
    end
  end
end

def two_sum(nums, target, result, nums_aux)
  head, *tail = nums #separa o array de números de entrada em um primeiro elemento e um "resto"

  if (tail.empty? || result != 0) 
    #condição de parada do loop: se a tail estiver vazia ou houver resultado, a função termina
    return result
    #senão...
  else  #fixa uma posição do array e compara ela com o restante que está na tail
    puts "HEAD: #{head}" 
    print "TAIL: #{tail}\n\n"
    tail.each.with_index do |tail_element, index|
      if((head + tail_element) == target) 
        #função calc_position: encontrar a posição dos números no array original,
        #formando a resposta final do problema
        result = calc_position(head, tail_element, nums_aux)
      end
    end
    return two_sum(tail, target, result, nums_aux) #chama a função recursivamente até que atinja a condição de parada
  end
end

array_entrada = gets.rstrip.split(',').map(&:to_i)
array_entrada_copia = array_entrada
target = gets.to_i
result = 0
#final_result = two_sum(array_entrada, target, result, array_entrada_copia)
final_result = two_sum(array_entrada, target, result, array_entrada_copia)
print "\n\nR.: #{final_result}"

#ENTRADAS:
#2,7,11,15
#9

#-2,7,11,-3
#8

#2,7,11,-3  
#4

#-2,7,11,-3
#-5  
#-5