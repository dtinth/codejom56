
cases do
  m = gets.to_i
  Prime.lazy.each_with_index do |n, i|
    index = i + 1
    if index.prime? && n >= m
      puts n
      break
    end
  end
end
