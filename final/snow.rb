
cases do
  gets
  p ints.each_cons(3).count { |c| c.all? { |d| d <= 0 }}
end
