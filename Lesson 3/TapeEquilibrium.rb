
# a = [3,1,2,4,3]
# should return 1
# because difference between all sum and small sum is [7, 5, 1, 7], and min is 1

def solution(a)
  sum_all = a.inject(:+) - a[0]
  sum_small = a[0]
  p = 1
  i = 0
  diff = []

  while p < a.length
    diff << (sum_all - sum_small).abs
    sum_all -= a[p]
    i += 1
    sum_small += a[i]
    p += 1
  end

  return diff.min
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 1, solution([3,1,2,4,3])
  end

end
