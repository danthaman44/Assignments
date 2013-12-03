##
# Implement any sorting algorithm.
# Bonus: keep it concise
#
def sort(array)
  return array if array.size <= 1
  l, r = split(a.array)
  combine(sort(l), sort(r))
end

def split(a) 
  mid = (a.size/2).round
  [a.take(mid), a.drop(mid)]
end

def combine(a,b)
  return b.empty? ? a : b if a.empty? || b.empty?
  smallest = a.first <= b.first ? a.shift : b.shift
  combine(a,b).unshift(smallest)
end

##
# Longest Collatz sequence
#
def euler14(n)
  cache = {1: 1}
  2.upto(n) do |i|
    collatz(n, cache)
  end
  cache.values.max
end

def collatz(n, cache)
  counter = 0
  start = n
  while (start != 1)
    if cache.include? start
	counter += cache[current]
        break
    end
    if start.even?
	start = start/2
    else
	start = 3*start+1
    end
    counter++
  end
  counter
end

end

##
# Return a random permutation of the elements.
#
def shuffle(array)
  array.each_with_index do |elt, i|
    random = Random.rand(array.length-i-1) + i
    swap(i, random, array)
  end
end

def swap(i, j, array)
  temp = array[j]
  array[j] = array[i]
  array[i] = temp
end


##
# Perform a Rot13 transformation on a string.
#
def rot13(string)

end

def query_classes(data, criteria)

end

p sort([3, 5, -1, 8, -2])
