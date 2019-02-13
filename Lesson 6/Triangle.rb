def solution1(a)
  return 0 if a.size < 3
  b = a.sort
  b.each_with_index do |n, i|
    return 0 if i >= a.length - 2
    return 1 if b[i+1] + b[i] > b[i+2]
  end
end

def solution2(a)
  return 0 if a.size < 3
  a.each_cons(3) do |p,q,r|
    return 1 if p + q > r
  end
  return 0
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input1
    assert_equal 1, solution1([10,2,5,1,8,20])
  end

  def test_example_input2
    assert_equal 1, solution2([10,2,5,1,8,20])
  end
end
