
cases do
  c,l,f = ints
  if l >= f
    puts "NoeyWillNotTolerate"
  else
    puts "%.3f" % [c/(f-l).to_f]
  end
end
