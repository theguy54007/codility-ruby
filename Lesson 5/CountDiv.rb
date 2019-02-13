## performance is bad as timeout error
def solution1(a,b,k)
  divisable_check = (a..b).to_a
  divisable = 0
  divisable_check.each do |d|
     divisable += 1 if d % k == 0
  end
  return divisable
end

## same as solution1, but more pretty
def solution3(a,b,k)
  divisable_check = (a..b).to_a
  divisable = divisable_check.count{|x|x%k==0}
  return divisable
end

## performance is good but completely math ability not code =.=
## copy from https://github.com/kumar91gopi/Algorithms-and-Data-Structures-in-Ruby/blob/master/codility/Prefix%20Sums/CountDiv.rb
def solution2(a,b,k)
  if a%k==0
        a=a
    else
        a+=k-a%k
    end
    b-=b%k
    ans=((b-a)/k)+1
    return ans
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 3, solution1(6,11,2)
  end

  def test_example_input
    assert_equal 3, solution2(6,11,2)
  end

  def test_example_input
    assert_equal 3, solution3(6,11,2)
  end
end
