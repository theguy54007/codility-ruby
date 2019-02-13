# a = [4,1,3,2]
# should return 1 because it is sequence contain 1 to N

# b = [4,1,3]
# should return 0 because it is missing 2 in sequence

def solution(a)
  a.sort!

  size = a.length
  perm = (1..size).to_a

  if a == perm
    return 1
  else
    return 0
  end
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 1, solution([4,1,3,2])
  end

  def test_negative
    assert_equal(0, solution([4,1,3]))
  end

end
