## When done, submit this entire file to the autograder.

# # Part 1

 def sum arr
 arr.inject(0, :+)  
 end

 def max_2_sum arr
   sum(arr.sort.last(2))
 end

def sum_to_n? arr, n
  if arr.empty?
    return false if n == 0
  else
    arr.combination(2).to_a.each do |pair|
      return true if sum(pair) == n
    end
  end
  return false
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
 attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
