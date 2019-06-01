def compara_arrays(arr1, arr2)
    if promedio(arr1) > promedio(arr2)
       promedio(arr1)
    else
        promedio(arr2)
    end
end

def promedio(arr)
    acc = arr.inject(0){|init, val| init + val}
    acc/arr.length
end

arreglo_uno = [1,3]
arreglo_dos = [1,3,3,4,66666]

if compara_arrays(arreglo_uno, arreglo_dos) == promedio(arreglo_dos)
    puts 'funciona'
else
    puts 'no funciona'
end
