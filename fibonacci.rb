def fibonacci num, a = 1, b = 0
  if num == 0 then
    return 0
  elsif num == 1
    return a
  else
    return fibonacci(num - 1, a + b, a)
  end
end

1.upto(10) do |i|
  p fibonacci(i)
end
