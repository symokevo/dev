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

