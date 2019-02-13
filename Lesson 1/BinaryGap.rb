def solution(n)
  a = n.to_s(2)
  b = a.split(//)
  i = 1
  z = 0
  m = []
  while i < b.length
    if b[i] == "0"
      z += 1
    else
      m << z
      z = 0
    end
    i += 1
  end
  if m.empty?
    return 0
  else
    return m.max
  end
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 5, solution(1041)
  end
end
