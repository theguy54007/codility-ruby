def solution(a)
  return 0 if a.size == 2
  position = 0
  # ruby 會自動回傳整數，不回傳小數點，故為精準判斷平均值，需用fdiv或.0來回傳完整平均數（含小數點）
  min = (a[0]+a[1]).fdiv(2)
  for i in 2...a.length
    avg1 = (a[i-1]+a[i]).fdiv(2)
    avg2 = (a[i-1]+a[i]+a[i-2]).fdiv(3)

    if min > avg1
      position = i-1
      min = avg1
    end

    if min > avg2
      position = i-2
      min = avg2
    end
  end
  return position
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 1, solution([4,2,2,5,1,5,8])
  end

  def test_input_with_negative
    assert_equal 5, solution([10, 10, -1, 2, 4, -1, 2, -1])
  end
end
