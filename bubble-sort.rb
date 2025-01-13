def bubble_sort(array)
  k = array.length - 1
  while k > 0
    i = 0
    while i < k
      if array[i] > array[i+1]
        temporary = array[i]
        array[i] = array[i+1]
        array[i+1] = temporary
      end
      i += 1
    end
    k -= 1
  end
  array
end

print bubble_sort([4,3,78,2,1,-5,-2,100,0,2])
# Should print from lowest to highest