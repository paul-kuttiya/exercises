# Sum of Pairs

# Given a list of integers and a single sum value, return the first two values (parse from the left please) in order of appearance that add up to form the sum.

# sum_pairs([11, 3, 7, 5],         10)
# #              ^--^      3 + 7 = 10
# == [3, 7]

# sum_pairs([4, 3, 2, 3, 4],         6)
# #          ^-----^         4 + 2 = 6, indices: 0, 2 *
# #             ^-----^      3 + 3 = 6, indices: 1, 3
# #                ^-----^   2 + 4 = 6, indices: 2, 4
# #  * entire pair is earlier, and therefore is the correct answer
# == [4, 2]

# sum_pairs([0, 0, -2, 3], 2)
# #  there are no pairs of values that can be added to produce 2.
# == None/nil/undefined (Based on the language)

# sum_pairs([10, 5, 2, 3, 7, 5],         10)
# #              ^-----------^   5 + 5 = 10, indices: 1, 5
# #                    ^--^      3 + 7 = 10, indices: 3, 4 *
# #  * entire pair is earlier, and therefore is the correct answer
# == [3, 7]
# Negative numbers and duplicate numbers can and will appear.

# NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.

#-----algorithm
# stored = []
# iterate array
# minus the sum with current value(result)
# check if there is any index of that result
# - if there is, store both value in stored
# - if the new last pair_index is lower than stored
#   - store new pair value in stored_index

def sum_pairs(ints, s)
  stored_index = []
  stored = []

  for i in 0..(ints.length - 1)
    pair = ints[s - ints[i]]
    pair_index = ints.index(pair)

    if pair_index
      stored_index = [i, pair_index]
      stored = [ints[i], pair]
    end

    if pair_index && pair_index < stored_index[1]
      stored_index = [i, pair_index]
      stored = [ints[i], pair]
    end
  end

  stored
end