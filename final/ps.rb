
cases do
  o = 0
  ps = 0
  gets.strip.chars.each do |c|
    case c
    when 'p'
      ps += 1
    when 's'
      o += ps
    end
  end
  p o
end
