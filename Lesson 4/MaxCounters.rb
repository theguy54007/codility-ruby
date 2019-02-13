def solution(n,a)
  max = 0
  counter_array = Array.new(n,0)
  for i in 0...a.size
    if a[i] <= n
      counter_array[a[i]-1] += 1
      if counter_array[a[i]-1] > max
        max = counter_array[a[i]-1]
      end
    end

    ## a[i] > n && a[i-1] <= n
    ## 比
    ## a[i] > n
    ## 效能更快
    if a[i] > n && a[i-1] <= n
      counter_array = Array.new(n,max)
    end
  end
  return counter_array
end


require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal [3, 2, 2, 4, 2], solution(5, [3,4,4,6,1,4,4])
  end
end
