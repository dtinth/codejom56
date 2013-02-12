
class Graph
  def initialize
    @m = Hash.new { |h,k|
      h[k] = Hash.new(false)
    }
  end
  def matrix
    @m
  end
  def friend(x,y)
    @m[x][y] = true
    @m[y][x] = true
  end
  def people
    @m.keys
  end
  def friends(id)
    @m[id].keys
  end
end

cases do
  n,m = ints
  graph = Graph.new
  m.times do
    graph.friend *ints
  end
  p graph.people.combination(2).map { |a,b|
    (graph.friends(a) & graph.friends(b)).length
  }.max
end
