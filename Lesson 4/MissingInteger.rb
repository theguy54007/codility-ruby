def solution(a)
  a.sort!
  a.uniq!
  if a.min < 0
    a = a.select{|i| i > 0}
  end

  if a.include?(1) == false
    return 1
  else
    i = 0
    while i < a.length
      if a[i] == (a[i+1]) || a[i+1] == (a[i] + 1)
        i += 1
      else
        missing = a[i] + 1
        break
      end
    end
   return missing ||= a.length + 1
  end

end



require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 5, solution([1, 3, 6, 4, 1, 2])
  end

  def test_no_missing
    assert_equal 4, solution([1, 2, 3])
  end

  def test_single_n
    assert_equal 1, solution([2])
  end

  def test_missing_one
    assert_equal 1, solution([2,5,6,6,7,7,3,3,2,9])
  end

  def test_with_many_negative
    assert_equal 1, solution([-2,-3,-5,-2,-8,2,4,6,3,7,8,-1])
  end

  def test_all_negative
    assert_equal 1, solution([-2,-3,-5,-2])
  end
end
