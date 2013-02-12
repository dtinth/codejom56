
cases do
  xa = []
  xb = []
  ya = []
  yb = []
  cases do
    x1, y1, x2, y2 = ints
    xa << x1
    xb << x2
    ya << y1
    yb << y2
  end
  xmin = xa.max
  xmax = xb.min
  ymin = ya.max
  ymax = yb.min
  yesno xmin < xmax && ymin < ymax
end
