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


