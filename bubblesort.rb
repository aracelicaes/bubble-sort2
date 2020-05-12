# frozen_string_literal: true


p arr = [4,3,1,5,0,2]
# arr = [4,3,78]

# A method takes an array as argument
# Loop through the array comparing 2 adjecent values from left to right
# If value on the left is bigger than the value on the right, they swap their positions
# The loop will stop when no changes are made

# def bs(array)
#     p sorted_array = array.clone
#     change = true
#     while change do
#         sorted_array.each_with_index do |e,index|
#                 if e > array[index+1]
#                     puts sorted_array[index] = array[index+1]
#                     puts sorted_array[index+1] = array[index]
#                     p sorted_array
#                 end
#         end
#         change = false
#     end
#     puts 'last'
#     p sorted_array
# end
#

def bubblesort(arr)
  sorted_arr = arr.clone
  change = true
  while change do
    i = 0
    count = 0  # counts the # of changes everytime the if goes thru it'll add 1
    while i < sorted_arr.length-1
      if sorted_arr[i] > sorted_arr[i+1]
        count += 1
      # switch the values here
        sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
        p sorted_arr
      end
      i += 1
    end
    change = false unless count > 0
  end
  p sorted_arr
end

bubblesort(arr)

