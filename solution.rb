
def pair_sum(array, target)
  # TODO
  result = []

  # nested loops

  # for i in 0...array.length-1 do
  #   for k in i+1...array.length do
  #     if array[i] + array[k] == target
  #       result.push([array[i], array[k]])
  #     end
  #   end
  # end

  #complement value option 1

  # track = array.to_set()

  # array.each do |num|
  #   complement = target - num
  #   track.delete(num)

  #   if (track.include?(complement))
  #     result.push([num, complement])
  #     track.delete(complement)
  #   end

  # end

  #complement value option 2
  seen = Set.new
  array.each do |num|
    complement = target - num
    if seen.include?(complement)
      result.push([num,complement])
    end
    seen.add(num)
  end

  return result
end

# pp pair_sum([1, 2, 3, 4, 5], 5)
pp pair_sum([0, -1, 2, -3, 1], -2)
# pp pair_sum([11, -4, 7, 8, -10], 3)

