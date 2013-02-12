
cases do
  gets
  puts "%.2f" % [strs.map(&:to_f).each_slice(2).each_cons(2).map { |(x1,y1),(x2,y2)|
    Math.hypot(x1-x2,y1-y2)
  }.sum]
end
