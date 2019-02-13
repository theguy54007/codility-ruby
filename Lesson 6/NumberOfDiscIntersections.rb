## it is correct solution but very bad performance as timeout error
## score only get 43% point in codility
def solution(a)
  all_disc = []
  a.each_with_index do |r,i|
    start_point = i - r
    end_point = i + r
    all_disc << [start_point, end_point]
  end

  i = 0
  j = 1
  intersect = 0
  while all_disc.size > 1
    disc = (all_disc[i][0]..all_disc[i][1]).to_a
    if disc.include?(all_disc[j][0])
      intersect += 1
    else
      check_intersect = disc - (all_disc[j][0]..all_disc[j][1]).to_a
      intersect += 1 if check_intersect.size != disc.size
    end
    return -1 if intersect > 10_000_000
    j += 1
    if j == all_disc.size
      all_disc.shift
      j = 1
    end
  end
  return intersect
end

require 'minitest/autorun'
class Tests < Minitest::Test
  def test_example_input
    assert_equal 11, solution([1,5,2,1,4,0])
  end
end
