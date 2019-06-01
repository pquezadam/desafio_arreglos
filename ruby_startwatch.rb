def clear_steps(arr)
    numbers = []
    arr.each do |elem|
        if elem.to_i > 200 && elem.to_i < 1000000 && !include_letter2?(elem)
            numbers.push elem
        end
    end
   return numbers
end

def include_letter?(elem)
    include_letter = false
    ('a'..'z').each do |letter|
        include_letter = true if elem.include? letter
    end
    return include_letter
end

def include_letter2?(string)
    include_letter = false 
    string.split('').each do |letter|
        include_letter = true unless ('0'..'9').to_a.include?(letter)
    end
    return include_letter
end

pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']
salida = ['2031']

if clear_steps(pasos) == salida
    puts 'funciona'
else
    puts 'no funciona'
end