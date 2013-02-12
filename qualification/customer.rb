
cases do
  time = Array.new(2500) { 0 }
  gets.to_i.array { gets.to_i }.each do |c|
    (c...c+60).each do |i| time[i] += 1 end
  end
  puts time.max
end
