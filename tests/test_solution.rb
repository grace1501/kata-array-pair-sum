require_relative "../solution"
require "minitest/autorun"

class TestSolution < Minitest::Test
  def test_pairs_sum_to_5
    result = pair_sum([1, 2, 3, 4, 5], 5)
    expected = [[1, 4], [2, 3]]
    assert_equal(normalize(expected), normalize(result))
  end

  def test_sum_to_negative_2
    result = pair_sum([0, -1, 2, -3, 1], -2)
    expected = [[-3, 1]]
    assert_equal(normalize(expected), normalize(result))
  end

  def test_pairs_sum_to_3
    result = pair_sum([11, -4, 7, 8, -10], 3)
    expected = [[-4, 7]]
    assert_equal(normalize(expected), normalize(result))
  end

  def test_pairs_sum_to_o_n_time_complexity
    # skip
    large_array = Array.new(100000) { rand(-10000..10000) }
    target_sum = rand(-20000..20000)
    start_time = Time.now
    pair_sum(large_array, target_sum)
    end_time = Time.now
    duration = end_time - start_time
    assert(duration < 0.1) # Test should complete quickly for an O(n) solution
  end

  private

  def normalize(array_of_arrays)
    array_of_arrays.map { |sub_array| sub_array.sort }.sort
  end
end