
def chem(has,fs)
  nx = has.dup
  fs.each do |a,b,c|
    if has[a] && has[b]
      nx[c] = true
    end
  end
  nx
end
cases do
  elements, formula = ints
  fs = []
  formula.times do
    a, b, c = ints
    fs <<[a,b, c]
  end
  has = gets.to_i.array { gets.to_i }.each_with_object(Hash.new(false)) { |c,h| h[c] = true }
  loop do
    nx = chem(has,fs)
    break if nx.length == has.length
    has = nx
  end
  puts has.length
end
