# 當出現 1，表示可以與0進行配對，等同於可以有一組組合
# 可直接增加 east 0 的數量
# 當 0 持續增加，每出現1，表示1可以跟後面的0進行配對
# 因此可以直接增加east 0 的數量
# 例如 [0,1,0,1,1]
# A[0] 出現 0 ，east + 1
# A[1] 出現 1（為west）可以和之前A[0]的0進行配對，就直接pairring新增一個組合
# A[2] 出現 0， east 又 + 1 （目前為2個）
# A[3] 出現 1，可以和前面 A[0] & A[2]進行配對（有2個組合），就可以直接在pairring數量上新增 east目前數量

def solution(a)
  east = 0
  pairring = 0
  a.each do |i|
    if i == 0
      east += 1
    elsif i == 1
      pairring += east
    end
  end
  return pairring > 1000000000 ? -1 : pairring
end



require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 5, solution([0,1,0,1,1])
  end
end
