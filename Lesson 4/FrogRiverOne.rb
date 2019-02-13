# 一隻青蛙由河岸的左側跳到右側時，需要藉由葉子作為墊腳石前進，青蛙由左側跳到右側，一共需要跳X下，
# 因此這些葉子須坐落於1~X的位子時，青蛙才有可能跳到右側。

# N 和 X 為介於 1~100,000的整數
# A[]內有N個整數且每個整數皆介於1~X

# 範例:

# 若X = 5，則青蛙最快在第幾秒時，能跳到河道右側

# A[0] = 1 ->表示在第0秒時，葉子會藉由水流漂到位置1並不再飄走

# A[1] = 3 ->表示在第1秒時，葉子會藉由水流漂到位置3並不再飄走

# A[2] = 1 ->目前1,3的位置已有葉子

# A[3] = 4 ->目前1,3,4的位置已有葉子

# A[4] = 2 ->目前1,2,3,4的位置已有葉子

# A[5] = 3 ->目前1,2,3,4的位置已有葉子

# A[6] = 5 ->目前1,2,3,4,5的位置已有葉子->在第六秒時完成

# A[7] = 4

# a = [1,3,1,4,2,3,5,4]
# x = 5
# should return 6

def solution(x,a)
  leaves = {}

  a.each_with_index do |position, index|
    leaves[position] = true
    return index if leaves.length == x
  end
  return -1
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 6, solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
  end

  def test_not_possible
    assert_equal(-1, solution(5, [1, 2, 1, 2, 1, 4, 5]))
  end

  def test_immediately
    assert_equal 0, solution(1, [1, 1])
  end
end
