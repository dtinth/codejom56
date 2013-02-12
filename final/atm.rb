
cases do
  money, tho, fiv, hun = ints
  o = [0,0,0]
  o[0] += [tho, (money / 1000).to_i].min
  money -= o[0] * 1000
  o[1] += [fiv, (money / 500).to_i].min
  money -= o[1] * 500
  o[2] += [hun, (money / 100).to_i].min
  money -= o[2] * 100
  puts money == 0 ? o * ' ' : 'no'
end
