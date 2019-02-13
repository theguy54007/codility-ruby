def solution(x,y,d)
  # return 0 if x == y
  # jumpCount = 0
  # while x < y
  #   jumpCount += 1
  #   x += d
  # end
  # return jumpCount
  return 0 if x >= y
  jumpCount = (y-x)/d
  jumpCount += 1 if (y-x)%d > 0
  return jumpCount
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 3, solution(10,85,30)
  end
  def test_example_input_with_no_need_jump
    assert_equal 0, solution(10,10,30)
  end
end
