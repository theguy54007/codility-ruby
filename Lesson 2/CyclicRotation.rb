def solution(k,a)
  return a if a.size == 0
  while k > 0
    moveNum = a[-1]
     a.pop
     a.insert(0,moveNum)
     k -= 1
  end
  return a
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal  [9, 7, 6, 3, 8], solution(3,[3, 8, 9, 7, 6])
  end

  def test_example_input_in_empty
    assert_equal  [], solution(3,[])
  end
end
