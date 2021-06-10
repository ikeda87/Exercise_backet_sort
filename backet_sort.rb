a = [1,7,3,4,2,2,6,5,7,8,0,1,8] # 13
b = [2,6,5,7,8,1,7,3,4,2,0,1,8,4,9,9,2,6,3] # 19
c = [1,8,4,9,5,7,8,4,2,0] # 10

def bucket_sort(array)
  answer_array = []
  change_array = []
  maximum_number = array.max
  foo = maximum_number + 1

  foo.times do
    foo += 1
    change_array.push([foo])
  end

  array.each do |element|
    change_array[element].push(element)
  end

  change_array.each do |array_data|
    array_data.each do |element|
      if element < maximum_number + 1
        answer_array << element
      end
    end
  end

  puts answer_array
end

# bucket_sort(a)
# bucket_sort(b)
# bucket_sort(c)
