
cases do
  puts gets.strip.reverse.chars.map { |x| { '(' => ')', ')' => '(' }[x] }.join
end
