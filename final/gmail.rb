
cases do
  p gets.to_i.array { gets.strip }.map { |x| x.sub(/\+.*@/, '@') }.stat.length
end
