def binary_search(ary, key)
  left = 0
  right = ary.count - 1
  while left < right do
    mid = (left + right) / 2
    if ary[mid] == key
      return true
    elsif key < ary[mid]
      right = mid
    else
      left = mid + 1
    end
  end
  return false
end

## 入力する時
# 10 5
# 10 => [1,2,3,4,5,6,7,8,9,10]の配列
# 5 => 存在するかどうか

a, key = gets.chomp.split.map(&:to_i)
ary = (0..a).to_a
puts binary_search(ary, key) ? "OK" : "NG"
