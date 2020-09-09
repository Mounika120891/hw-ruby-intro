# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  arr.each do |i|
    sum+= i
  end
  return sum# YOUR CODE HERE
end

def max_2_sum arr
  if arr.length==0
   return 0
  elsif arr.length==1
   return arr[0]
  else
   arr.sort!
   arr.reverse!
   return arr[0]+arr[1]
  end# YOUR CODE HERE
end

def sum_to_n? arr, n
  if arr.empty?
    return false if n==0
  else
    arr.combination(2).to_a.each do|pair|
      return true if sum(pair)==n
    end
  end
      return false# YOUR CODE HERE
end

# Part 2

def hello(name)
  msg="Hello, "+ name
  return msg
end

def starts_with_consonant? s
  if s.empty?
  	return false
  elsif ( /\A[qwrtypsdfghjklzxcvbnm]{1}/i =~ s[0] )
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
def initialize(isbn,price)
  if isbn.length==0 || price<=0 then
    raise ArgumentError.new("isbn should not be empty and price shouls not be less than zero")
  end
  @isbn, @price= isbn, price
end
#getters
def isbn
  @isbn
end
def price
  @price
end
#setters
def isbn=(isbn)
    if isbn.length == 0 then
      raise ArgumentError.new("isbn shouldn't be empty")
    end
    @isbn = isbn
end

def price=(price)
    if price <= 0 then
      raise ArgumentError.new("price shouldn't be negative nor zero number")
    end
    @price = price
end
# format price as two decimal point string
  def price_as_string
    return "$%0.2f" % @price
  end
end
