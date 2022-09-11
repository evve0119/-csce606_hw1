# frozen_string_literal: true

# Part 1

def sum(arr)
  ans = 0
  for i in 0...arr.length
    ans += arr[i]
  end
  return ans
end

def max_2_sum(arr)
  ans = 0
  arr.sort!.reverse!

  if arr.length == 0
    return ans
  elsif arr.length == 1
    len = 1
  else
    len = 2
  end

  for i in 0...len
    ans += arr[i]
  end

  return ans
end

def sum_to_n?(arr, number)

  target = {}

  for i in 0...arr.length
    if !target.key?(number - arr[i])
      target[number - arr[i]] = i
    end
  end

  for i in 0...arr.length
    if target.key?(arr[i]) and target[arr[i]] != i
      return true
    end
  end

  return false

end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(string)

  if string[0] == nil || !string[0].match("[a-zA-Z]") || string[0].match("[aeiouAEIOU]")
    return false
  else
    return true
  end

end

def binary_multiple_of_4?(string)
  if string ==  "" || string.match("[^0-9]")
    return false
  elsif string.to_i % 4 != 0
    return false
  else
    return true
  end
end

# Part 3

# Object representing a book
class BookInStock
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    if isbn.is_a? String and isbn != ""
      @isbn = isbn
    else
      raise ArgumentError
    end

    if price > 0
      @price = price
    else
      raise ArgumentError
    end

  end

  def price_as_string
    "$"+("%.2f" % @price).to_s
  end
end
