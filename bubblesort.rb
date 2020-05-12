def bubblesort(arr)
  sorted_arr = arr.clone
  change = true
  while change
    i = 0
    count = 0
    while i < sorted_arr.length - 1
      if sorted_arr[i] > sorted_arr[i + 1]
        count += 1
        sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
      end
      i += 1
    end
    change = false unless count.positive?
  end
  sorted_arr
end

def bubblesort_by_block(arr)
  sorted_arr = arr.clone
  change = true
  while change
    i = 0
    count = 0
    while i < sorted_arr.length - 1
      if yield(sorted_arr[i], sorted_arr[i + 1]).positive?
        count += 1
        sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
      end
      i += 1
    end
    change = false unless count.positive?
  end
  sorted_arr
end
