def search_array(array, number)
  i = 0
  while i < array.length
    if number == array[i]
      return i
    else
      i+=2
    end
  end
  return nil
end
array = [1, 24, 52, 3]

# p search_array(array, 102)

#define fib method with an integer parameter
#define the array for FIbonacci numbers with [0,1]
#make a loop to put a calculated Fibonacci Number to the array
#Fibonacci number = last value in the array + two previous number
#put the Fibonacci number to the array
#

def fib(number)
  fib_array = [0,1]
  i = 2
  while i < number
    fibNum = fib_array[-1] + fib_array[-2]
    fib_array << fibNum
    i +=1
  end
  return fib_array[number-1]
end

def fib_recursive(number)
  if number ==1
    return 0
  elsif number ==2
    return 1
  else
    return fib_recursive(number-1) + fib_recursive(number-2)
  end
end

# p fib_recursive(100) == 218922995834555169026
 # p fib(100) == 218922995834555169026

# 1. bubble sort
# 2. We got the concept from https://visualgo.net/
# 3. 
# 4. Pseudocode
#In an array, we should compare the first elements to the next one and switch position if the first elem is bigger than second one if we should compare the next two elements. We should continue doing this until the end.

#Define bubble sort method with an argument of array
#Define fixed_position
#loop from 0 to fixed_position
#compare the left element and right element
#if the left element is greater than the right element then swith the element position.
#define a temporary integer and put the value to it.
#if not, increment index of the left elem


def bubble_sort(array)
  fixed_position = array.length
  while true
  left_elem_index = 0
    while true
      #compare the left and the right
      left = array[left_elem_index]
      right = array[left_elem_index +1]
      if left > right then
        array[left_elem_index] = right
        array[left_elem_index + 1] = left
        left_elem_index +=1
      else
        left_elem_index +=1
      end
      break if left_elem_index +1 == fixed_position
    end
    fixed_position -=1
    break if left_elem_index ==1
  end
  return array
end

array = [5,3,4,3,34,23,5,43,2,4,]
p bubble_sort(array)