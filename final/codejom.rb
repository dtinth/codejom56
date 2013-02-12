
cases do
  gets
  x = (ints.map { |x| [x, 1] } + ints.map { |x| [x, -1] })
  x = x.group_by(&:first).map { |k,v| [k, v.map(&:last).sum] }
  x = x.sort.map(&:last)
  c = 0
  a = []
  x.each do |cc|
    c += cc
    a << c
  end
  puts a.any? { |x| x >= 10 } ? 'dead' : 'alive'
end
