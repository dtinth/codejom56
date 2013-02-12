
cases do
  p ints.last.array { gets.strip }
    .map { |x| x.chars.each_with_index.select { |c, i| c == '*' }.map(&:last) }
    .each_cons(2).count { |a,b|
      a.length != b.length || a.zip(b).any? { |aa,bb| (aa-bb).abs > 1 }}
end
