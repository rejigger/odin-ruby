def bubble_sort(array)
    n = array.length()
    swapped = true
    while swapped
    swapped = false
        for i in 1..n-1 do
            if array[i-1] > array[i]
                array [i-1], array[i] = array[i], array[i-1]
                swapped = true
            end
        end
    end
    print array
end


array_sort = [4,3,78,2,0,2]
print bubble_sort(array_sort)
