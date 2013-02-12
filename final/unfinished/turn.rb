
cases do
  x, y, theta = strs
  x, y = [x.to_i, y.to_i]
  theta = theta.to_f * Math::PI / 180
  theta2 = Math.atan2(y, x)
  rho = Math.hypot(x, y)
  puts "%.2f %.2f" % [rho * Math.cos(theta + theta2), rho * Math.sin(theta + theta2)]

end
