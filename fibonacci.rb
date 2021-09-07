def fibs number
  arr = [0,1]
  index = 2
  while index<=number
    arr << arr[index-2]+arr[index-1]
    index+=1
  end
  arr[number]
end
p fibs 5
p fibs 6

def fibs_rec number
  return 0 if number == 0
  return 1 if number == 1
  fibs_rec(number-2) + fibs_rec(number-1)
end

p fibs_rec 5
p fibs_rec 6

