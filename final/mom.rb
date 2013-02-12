
# true false
# open close
#   in   out

def getin(x, f, d)
  raise :door unless d
  raise :wtf if x == f
  f
end

def setdoor(x, f)
  raise :wtf if x == f
  f
end
cases do
  mom = true
  dad = true
  door = false
  gets
  begin
    ints.each do |c|
      case c
      when 1
        mom = getin(mom, true, door)
      when 2
        dad = getin(dad, true, door)
      when 3
        mom = getin(mom, false, door)
      when 4
        dad = getin(dad, false, door)
      when 5
        door = setdoor(door, true)
      when 6
        door = setdoor(door, true)
      when 7
        door = setdoor(door, false)
      when 8
        door = setdoor(door, false)

      end
    end
    puts "yes"
  rescue
    puts "no"
  end

end
