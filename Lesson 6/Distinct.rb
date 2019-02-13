# 回傳多少種數字（不看數字出現次數，而看數字值）

# solution 1 is simply and neat as the ruby has uniq method for array , so it is cheat too XDD
def solution1(a)
  a.uniq.size
end

# solution 2 is without uniq method
# create empty hash
# array a each value will be the key of hash
# value of every key in the hash will be true
# so that each array value will only become one key in hash ,even it is duplicate value in array
def solution2(a)
  uniq_a = {}
  a.each do |n|
    uniq_a[n] = true
  end
  uniq_a.size
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_solution1_example_input
    assert_equal 3, solution1([2,1,1,2,3,1])
  end

  def test_solution2_example_input
    assert_equal 3, solution2([2,1,1,2,3,1])
  end
end
