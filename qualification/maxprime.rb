
cases do
  i = gets.to_i
  puts i.prime? ? i : i.prev_prime
end
