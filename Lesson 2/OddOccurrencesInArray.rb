def solution(a)
  b = a.sort
  i = 0
  while i < a.length
    if b[i] == b[i + 1]
      i += 2
    else
      return b[i]
    end
  end
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 7, solution([9,3,9,3,9,7,9])
  end
end
