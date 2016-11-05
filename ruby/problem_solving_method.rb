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
 p fib(100) == 218922995834555169026












