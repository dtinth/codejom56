
cases do
  w, h, a, b = ints
  ww, hh = [w, h]
  area = w * h
  ratio = w / h
  target = a / b
  if ratio > target
    w = h * target
  else
    h = w / target
  end
  puts "%.2f" % [(area - (w * h)) / area  * 100]
end
