## p * q * r 最大值
## 其中 p >= q >= r
## 需看array a 裡，任意三組符合上面規定的數，相乘最大的數
## 可先sort，就會按照順序，最後三組一定為最大的數字
## 因array a 含負數，數字越大且含負，則數字越小，
## 兩個負數相乘會得正，所以有可能最小的兩個負數相乘，加乘最後（最大）數字，可能比後面三個數字相乘更大
## 因此要先將最後三個數字相乘， 再用最先2個數相乘以及最後數相乘，來比較取出最大數即可
def solution(a)
  b = a.sort
  triplet1 = b.last(3).inject(&:*)
  triplet2 = b.first(2).inject(&:*) * b.last

  return [triplet1,triplet2].max
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 60, solution([-3,1,2,-2,5,6])
  end

  def test_example_input2
    assert_equal 125, solution([-5, 5, -5, 4])
  end
end
