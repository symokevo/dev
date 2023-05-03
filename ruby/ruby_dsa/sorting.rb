require 'prime'
require 'humanize'
require 'date'
# require `mathn`
# Introduction to SORTING algorithms
# a = [1, 5, 6, 6, 13, 213, 65, 7, 43, 90]
# p a.sort

=begin
Bubble sort
***********
- starts from the leftmost value and keeps moving to the right
- if next value in comparison > previous value, it is replaced by a higher value and the sorting continues


Quick Sort
**********
- widely used
- uses the devide and conquer concept
- picks the pivot point and divides the array into two groups... ie
- one below the pivot point and the other above


Merge sort
**********
- uses the devide and conquer concept as well
- divides the entire collection into subsectons, sort them and remerge it with the next subsection

=end

# Implementing the bubble sort algorithm

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false
    (n-1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i+1], array[i]
        swapped = true
      end
    end
    break if not swapped
  end
  array
end

a = [1, 5, 6, 6, 13, 213, 65, 7, 43, 90]
p bubble_sort(a)
# **********************************************************************

# Implementing the Quick Sort algorithm
class Array
  def quicksort
    return [] if empty?
    # select a mid value from the array and store it in the pivot variable
    pivot = delete_at(rand(size))
    # partition the array based on the pivot variable
    left, right = partition(&pivot.method(:>))
    # return left, right and pivot & call quicksort on both left and right
    return *left.quicksort, pivot, *right.quicksort
  end
end
arr = [2, 34, 3, 65, 7, 35, 67, 86]
p arr.quicksort
# **********************************************************************

# Implementing the Merge-sort algorithm

def merge_sort(list)
  if list.length <= 1
    list
  else
    mid = (list.length / 2).floor
    left = merge_sort(list[0..mid - 1])
    right = merge_sort(list[mid..list.length])
    merge(left, right)
  end
end

def  merge(left, right)
  if left.empty?
    right
  elsif right.empty?
    left
  elsif left.first < right.first
    [left.first] + merge(left[1..left.length], right)
  else
    [right.first] + merge(left, right[1..right.length])
  end
end

# test the implementation
arr2 = [45, 54, 45, 765, 465, 676, 8, 767, 23]
p merge_sort(arr2)
# **********************************************************************

# Implementing a Prime Number counting Algorithm
# you have to require prime library as i have done at the top of the file.( require 'prime')

# store prime numbers in an array
prime_array = Prime.take_while{ |p| p < 2_000_000 }

# add all the values to the array
total_count = prime_array.inject{ |sum, x| sum + x }
p total_count
# **********************************************************************

# POWER DIGIT SUM ALGORITHM
# Question: what is the sum of the digits of the numeber 2 to the power, 1000th power

p (2 ** 1000).to_s

# convert the string to an array of elements
p (2 ** 1000).to_s.split(//)

# convet to integers
p (2 ** 1000).to_s.split(//).map(&:to_i)

# Add the array elements using inject
p (2 ** 1000).to_s.split(//).map(&:to_i).inject(:+)

# **********************************************************************

# Implementing a humanize counting algorithm
# Question: If all the numbers from 1 to 1000 were written out in words, how many letters would be used
# Solution: You will have to first install a gem called, "humanize" and require it as i have done in the second line of this file
solution = (1..1000).to_a.map(&:humanize)
p solution
# above, you created a range 1-1000, converted it to an array of integers and called "humanize" method to
# to convert the elements to named values

p solution.join.tr(" -", "").size
# used 'tr'- translate method to remove dashes and paces. then add size method to get them letter count

# **********************************************************************
# Implementing a date algorithm
# Question: how many Sundays fell on the first of the month during the twentiecth century (January 1, 1901, to
# December 31, 2000)?

# solution: first require date
start_date = Time.local(1901)
end_date = Time.local(2000,12,31)
sunday_counter = 0
seconds_in_a_day = 86400

while end_date >= start_date
  if end_date.strftime("%A") == "Sunday" && end_date.strftime("%d") == "01"
    sunday_counter += 1
    # strftime method converts date to string
  end
  end_date -= seconds_in_a_day
  # 86
end
puts sunday_counter # should print 171

# **********************************************************************
=begin
How To Code a Fibonacci Digit Counter
=====================================
Question: What is the index of the first term in the Fibonacci sequence to contain 1000 digits?
Note: fibonacci sequence is a series where you add the next number to the previous number in that series
Solution:
=end
def fibonacci_digit_counter
  num1, num2, i = -1, 0,1
  while i.to_s.length < 1000
    num1 += 1
    i, num2 = num2, num2 + i
  end
  num1
end
p fibonacci_digit_counter

# **********************************************************************
=begin
Implementing a Permutation algorithm
=====================================
Question: What is the millionth lexicographic permutation of the digits 0,1,2,3,4,5,6,7,8, and 9?
Note: Lexicographic permutation is the number of permutations you can make with a given set of numbers
Solution:
you are going to use the permutation method. the method functions as follows
arr = [1,2,3]
arr.permutation { |i| p i}
=end
p [0,1,2,3,4,5,6,7,8,9].permutation.to_a[999_999].join


# **********************************************************************
=begin
Implementing an amicable algorithm
=====================================
Question: What is the sum of all the amicible numbers under 10,000?
Note: - Take a number, identify all its divisors, and add them togetherr to get a value
      - Next, take that final sum value, identify its divisors, and add them together.
      - If the second sum value is the same as the original number for which you found divisors in the firs place,
      - then both the original number and its final sum are considered amicible numbers
Solution: you will need to include a gem called mathn
=end

class Integer
  def dsum
    return 1 if self < 2
    pd = prime_division.flat_map{|n,p| [n] * p}
    ([1] + (1..pd.size).flat_map{|e| pd.combination(e).map{|f| f.reduce(:*)}}).uniq.inject(:+)
  end

  def find_d_sum(n)
    n.times.inject do |sum, cur|
      other = cur.dsum
      (cur != other && other.dsum == cur) ? sum +cur :sum
    end
  end
  # p find_d_sum(10)
end

# **********************************************************************
=begin
Implementing a Factorial algorithm
=====================================
Question: What is the sum of the digits in the number 100?
Note: A factorial is a number that is the multiplied value of itself as well as all the digits upto 1
Solution:
=end

def factorial_value_sum_generator(factorial)
  arr = (1..factorial).to_a.reverse.each {
    |i| factorial += factorial * (i - 1)
  }
  factorial.to_s.split(//).map(&:to_i).inject(:+)
end
p factorial_value_sum_generator(100)


# **********************************************************************
=begin
Implementing an even Fibonacci number algorithm
=====================================
Question: By considering the terms in the fibonacci sequence whose values do not exceed 4 million,
  find the sum of the even-valued numbers?
Solution:
=end
class Fibbing
  def initialize(max)
    @num_1 = 0
    @i = 0
    @sum = 0
    @num_2 = 1
    @max = max
  end
  def even_fibonacci
    while @i <= @max
      @i = @num_1 + @num_2
      @sum += @i if @i % 2 == 0
      @num_1 = @num_2
      @num_2 = @i
    end
    @sum
  end
end

result = Fibbing.new(4_000_000)
p result.even_fibonacci

# **********************************************************************
=begin
Implementing the least common multiple
=====================================
Question: What is the smallest positve number that is evenly divisible by all the numbers from 1 to 20?
Note:lest common multiple - lcm
Solution: you will use lcm
=end
p (1...20).to_a.reduce(:lcm)
