
cases do
  left = []
  right = []
  cases do
    x, v = strs
    x = x.to_i
    v = v.upcase
    case v
    when "LEFT"
      left << x
    when "RIGHT"
      right << x
    end
  end
  p (left.stat.values.max || 0) + (right.stat.values.max || 0)
end
