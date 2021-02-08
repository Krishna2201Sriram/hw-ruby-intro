# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum=0
  for i in arr
    sum+=i
  end
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length() == 1
  sor_arr = arr.sort{|a,b| b<=>a}
  return sor_arr[0] + sor_arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  !!arr.uniq.combination(2).detect { |a, b| a + b == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  return false if s.empty?
  if s=~/\A[^aeiou\W\d_]/i
	  return true
  else
	  return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return false if s.empty?
  return true if /\A[01]+\z/.match(s) && s.to_i(2)%4 == 0
	return false
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
      if isbn.length <= 0 && price <= 0
        raise ArgumentError
      else
        @isbn = isbn
        @price = price
      end
  end
  
  #getter for isbn and price
  def isbn
    return @isbn
  end
  
  def price
    return @price
  end
  
  #setter for isbn and price
  def isbn=(new_isbn)
    @isbn = new_isbn
  end
  
  def price=(new_price)
    @price = new_price
  end
	
	def price_as_string
	  "$" + '%.2f' % @price.round(2).to_s
	end
end
