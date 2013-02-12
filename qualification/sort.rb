cases do
  puts gets.to_i.array { gets.strip }
    .sort_by { |c|
      c.chars.map.with_index { |ch, i| (i % 2 == 0 ? 1 : -1) * ch.ord }
    }
end
