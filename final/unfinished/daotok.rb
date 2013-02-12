
cases do
  stars = gets.to_i.array { gets.to_i }.sort.uniq
  state = :normal
  ok_time = 0
  count = 0
  stars.each do |time|
    case state
    when :normal
      if time >= ok_time
        state = :pray
        ok_time = time + 180
      end
    when :pray
      if time >= ok_time
        state = :pray
        ok_time = time + 180
        count += 1
      else
        ok_time = time + 10
        state = :normal
      end
    end
  end
  if state == :pray
    count += 1
  end
  p count
end
