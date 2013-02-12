


cases do
  stack = [1]
  nexts = [1]
  data = strs.map { |c|
    case c
    when '('
      stack.push nexts.last
      nexts.push 1
      '('
    when ')'
      stack.pop
      ')'
    when '?'
      if stack.reduce(&:*) > 0
        nexts.pop
        nexts.push -1
        '-'
      else
        nexts.pop
        nexts.push 1
        '+'
      end
    else
      c
    end
  }
  p eval data*''
end
