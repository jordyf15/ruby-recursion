def merge_sort arr
  if arr.size < 2
      return arr
  end
    if arr.size%2 == 0
      left_arr = merge_sort arr[0..((arr.size/2)-1)]
      right_arr = merge_sort arr[(arr.size/2)..arr.size-1]
    else
      left_arr = merge_sort arr[0..(arr.size/2)]
      right_arr = merge_sort arr[((arr.size/2)+1)..arr.size-1]
    end
    sorted_arr = []
    until left_arr.size == 0 && right_arr.size == 0
      if left_arr[0] == nil
        sorted_arr << right_arr[0]
        right_arr.shift
      elsif right_arr[0] == nil
        sorted_arr << left_arr[0]
        left_arr.shift
      elsif left_arr[0] > right_arr[0]
        sorted_arr << right_arr[0]
        right_arr.shift
      else
        sorted_arr << left_arr[0]
        left_arr.shift
      end
    end
    sorted_arr
end

p merge_sort [5,2,4,1,3]
p merge_sort [12, 15, 23, 4 , 6, 10, 35, 28]
p merge_sort [35, 28, 23, 15, 12, 10, 6, 4]
p merge_sort [12, 15, 23, 4 , 6, 10, 35, 28, 100, 130, 500, 1000, 235, 554, 75, 345, 800, 222, 333, 888, 444, 111, 666, 777, 60]
p merge_sort [12, 15, -23, -4 , 6, 10, -35, 28]
p merge_sort [12, 12, 23, 4 , 6, 6, 10, -35, 28]
p merge_sort [12, 12, 12, 12, 12]