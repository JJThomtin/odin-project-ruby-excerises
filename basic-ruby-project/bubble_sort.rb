def bubble_sort(arr)
    arr_length = arr.length
    (arr_length-1).times do
        arr.each_with_index do |item, index|
            if index < arr_length - 1
                if arr[index] > arr[index + 1]
                    temp = arr[index]
                    arr[index] = arr[index +1]
                    arr[index + 1] = temp
                end
            end
        end
    end
    arr
end
