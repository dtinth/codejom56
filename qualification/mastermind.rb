
def mastermind(question, answer)
  [
    question.chars.count { |ch| answer.include?(ch) },
    question.chars.enum_for(:count).with_index { |ch, i| answer[i] == ch }
  ]
end

#p mastermind('5134', '5892')
#exit
cases do
  data = strs
  guess = data[0]
  has = data[1].to_i
  match = data[2].to_i
  puts (1000..9999).find { |num|
    str = num.to_s
    chars = str.chars.to_a.sort
    next unless chars.uniq.sort == chars
    [has, match] == mastermind(str, guess)
  } || 'no'
end
