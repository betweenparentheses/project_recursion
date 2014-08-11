#master merge_sort method. array goes in, sorted array comes out
def merge_sort(array)
  return array if array.size == 1
  
  first_half = array[0..((array.size-1)/ 2)]
  second_half = array [(((array.size - 1) / 2) + 1)..array.size - 1]
  
  first_half = merge_sort(first_half)
  second_half = merge_sort(second_half)
  
  merge(first_half, second_half)
end


#merges two sorted arrays into a larger sorted array
def merge(first_half, second_half)
  merged_array = []
  
  while first_half.size > 0 && second_half.size > 0 do
    if first_half [0] <= second_half[0]
      merged_array.push(first_half.shift)
    elsif second_half[0] < first_half[0]
      merged_array.push(second_half.shift)
    end
  end

#once only one (sorted) array remains, just add on the rest of that array
#only one of these loops will ever run
  while first_half.size > 0 {merged_array.push(first_half.shift)}
  while second_half.size > 0 {merged_array.push(second_half.shift)}
    
  merged_array
end
  
#testing

merge_sort([1,3,6,3,4,5,7,8,9,2,4,5,2,1])
merge_sort([-9, 12, -99, 3, 45, 3])

