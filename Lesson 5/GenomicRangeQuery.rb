# solution 1 (performance is better than solution 2, it will get 100% but the code is not beauty than solution 2)
def solution1(s,p,q)
  dna = []
  p.each_with_index do |position, i|
    range = s[p[i]..q[i]]
    ## 下方 range.index判斷是
    ## 如果為nil ,即是 false不會執行
    ## 一直往下判斷至為true的，也就是range.index有值，才會存入 value到 dna
    ## 因此必須以字母與數字配對並按照順序來進行判斷
    if range.index("A")
      dna << 1
    elsif range.index("C")
      dna << 2
    elsif range.index("G")
      dna << 3
    else
      dna << 4
    end
  end
  return dna
end

# solution 2 (performance is bad as it will timeout error in codility)
def solution2(s,p,q)
  represent = { 'A'=> 1, 'C'=> 2, 'G'=> 3, 'T'=> 4 }
  dna = []
  p.each_with_index do |position, i|
    min = represent[s[p[i]]]
    range = s[p[i]..q[i]]
    range.each_char{|c| min = represent[c] if represent[c] < min}
    dna << min
  end
  return dna
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input_for_solution1
    assert_equal [2, 4, 1], solution1("CAGCCTA",[2,5,0],[4,5,6])
  end

  def test_example_input_for_solution2
    assert_equal [2, 4, 1], solution2("CAGCCTA",[2,5,0],[4,5,6])
  end
end
