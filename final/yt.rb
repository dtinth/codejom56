
cases do
  links = Hash.new { |h,k| h[k] = [] }
  visited = Hash.new(false)
  length = Hash.new(nil)
  fringe = []
  videos = gets.to_i
  cases do
    x, y = ints
    links[x] << y
  end
  answer = nil
  fringe << 1
  visited[1] = true
  length[1] = 0
  until fringe.empty?
    c = fringe.shift
    links[c].each do |d|
      if !visited[d]
        visited[d] = true
        length[d] = length[c] + 1
        fringe << d
      end
    end
  end
  puts length[videos] || 'impossible'
  
end
