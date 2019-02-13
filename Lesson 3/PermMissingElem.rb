def solution(a)
  a.sort!
  i = 0
  return 1 if a[0] != 1 || a.size == 0
  while i < a.size - 1
    return a[i]+1 if a[i+1] - a[i] > 1
    i += 1
  end
  return a[-1] + 1
end

def solution2(a)
 a.sort!

 return 1 if a[0] != 1 || a.size == 0

 sizeFull = a.size + 1
 full_n = (1..sizeFull).to_a
 missingNum = full_n - a

 if missingNum.empty?
  return a[-1] + 1
 else
  return missingNum[0]
 end

end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 4, solution([2,3,1,5])
  end

  def test_example_input_missing_one
    assert_equal 1, solution([2,3,5])
  end

  def test_example_empty
    assert_equal 1, solution([])
  end

  def test_example_missing_last
    assert_equal 6, solution([1,5,2,3,4])
  end

  def test_example_input
    assert_equal 4, solution2([2,3,1,5])
  end

  def test_example_input_missing_one
    assert_equal 1, solution2([2,3,5])
  end

  def test_example_empty
    assert_equal 1, solution2([])
  end

  def test_example_missing_last
    assert_equal 6, solution2([1,5,2,3,4])
  end
end
