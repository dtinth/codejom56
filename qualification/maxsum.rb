
nums = ints

x = memoized ->(index) {
  o = []
  o.push nums[index]
  if index - 1 >= 0
    try = nums[index] + recur(index - 1)
    if try > nums[index]
      o.push try
    end
  end
  o.max
}

p (0...nums.length).map { |i| x.(i) }.max
