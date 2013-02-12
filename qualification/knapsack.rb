

class Knapsack
  def initialize(m, n, v)
    @m = m
    @n = n
    @v = v
    @cache = {}
  end
  def find(i,m)
    @cache[[i,m]] || (@cache[[i,m]] = find!(i,m))
  end
  def find!(i,m)
    return 99999999 if i == 0 && m != 0
    return 0 if i == 0
    return 0 if m == 0
    value = @v[i - 1]
    return 99999999 if m - value < 0
    [
      1 + find(i-1,m-value),
      find(i-1,m)
    ].min
  end
end

cases do
  m, n = ints
  m += 1
  v = n.array { gets.strip.length + 1 }
  ns = Knapsack.new(m, n, v)
  d = ns.find(n,m)
  if d >= 99999999
    puts -1
  else
    puts d
  end
end
