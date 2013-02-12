$dirs = [[-1,0],[0,1],[1,0],[0,-1]]
def nexts(p, d)
  [p[0] + $dirs[d][0], p[1] + $dirs[d][1]]
end

def can_move(p,d,map)
  n = nexts(p,d)
  return false if n[0] < 1 || n[0] > map.length
  return false if n[1] < 1 || n[1] > map[n[0] - 1].length
  map[n[0] - 1][n[1] - 1] != '#'
end

cases do
  m, n, k = ints
  p = ints
  d = 0
  map = m.array { gets.strip }
  k.times do
    if can_move(p,d,map)
      p = nexts(p,d)
    else
      d = (d + 1) % 4
    end
  end
  puts p * ' '
end
