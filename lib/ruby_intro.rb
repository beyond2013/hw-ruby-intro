# part 1
def sum(ary)
	array = Array.new(ary)
	result=0
	if !array.empty? 
	 return array.sum
	else
		return result
	end
end

def max_2_sum(aray)
	array = Array.new(aray)
	return 0 if array.empty?
	return array[0] if array.length == 1
	array = array.sort
	max2sum = array[array.length-2] + array[array.length-1]
	return max2sum
end

def sum_to_n?(aray, n)
	array = Array.new(aray)
	return false if array.empty?
	perm = array.permutation(2).to_a
	result = false
	perm.each do |ary|
		if ary.sum == n
			result = true
		end
	end
	return result
end

# part 2
def hello(name)
	return "Hello, #{name}"
end

def starts_with_consonant?(s)
	str = String.new(s)
  return /\A[^aeiou\W]/i.match?(str)	
end

def binary_multiple_of_4?(s)
 str = String.new(s)
 return false if str.empty?
 if /\A[0-1]*\z/.match?(str)
	 return str.to_i(2) % 4 == 0
 else
	 return false
 end
end

#part 3
class BookInStock

	def initialize(isbn, price)
			if isbn.empty? or price <= 0
				raise ArgumentError, "ISBN Cannot be emtpy, and price should be greater than zero"
			else
				@isbn = isbn
				@price = price
			end
	end

  def isbn=(isbn)
		@isbn=isbn
	end

	def price=(price)
		@price=price
	end

	def isbn
		@isbn
	end
	
	def price
		@price
	end


	def price_as_string
		return "$%0.2f" % [@price]
	end
end
