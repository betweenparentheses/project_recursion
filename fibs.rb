#iterative fibonacci sequence generator. Returns array of fibonaccis up to , starting with zeroth element 0
def fibs(n)
  first = 0
  second = 1
  arr = []
  (0..n).each do |x|
    arr[x] = first
    first, second = second, first+second
  end
  arr
end

#recursive fibonacci sequence generator. Returns array of fibonaccis up to n, starting with zeroth element 0
def fibs_rec(n)
  return [0] if n == 0
  return [0, 1] if n == 1
  arr = fibs_rec (n-1)
  arr << arr[-1]+arr[-2]
end


#testing it out
print fibs(8) # => [0, 1, 1, 2, 3, 5, 8, 13, 21] 
puts "\n"
print fibs(22) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711] 
puts "n"

print fibs_rec(8) # => [0, 1, 1, 2, 3, 5, 8, 13, 21] 
puts "\n"
print fibs_rec(22) # => [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, 17711] 
