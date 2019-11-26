require "byebug"

unsorted_array = [9, 7, 5, 3, 1, 2, 4, 6, 8]

def merge_sort(array)
  debugger
  if array.length == 1
    return array
  else
    length = array.length
    half_length = length / 2


    first_element = merge_sort(array[0..half_length - 1])
    second_element = merge_sort(array[(half_length)..-1])
    
    if first_element.is_a?(Array) && second_element.length > 1
      temp = iterative_sorting(first_element, second_element)
      return temp
    elsif first_element[0] < second_element[0]
      temp = [first_element[0], second_element[0]]
      return temp
    else
      temp = [second_element[0], first_element[0]]
      return temp
    end
  
  end
  return array
end

def iterative_sorting(array1, array2)
  
  finally = []

  iterations = array1.length + array2.length

  iterations.times do 
    if array1[0] == nil
       array2.each do |ele|
        finally << ele 
       end
       return finally
    elsif array2[0] == nil
       array1.each do |ele|
        finally << ele 
       end
       return finally
    end

    if array1[0] > array2[0]
      finally << array2.shift
    else
      finally << array1.shift
    end
  end


  return finally
end

merge_sort(unsorted_array)