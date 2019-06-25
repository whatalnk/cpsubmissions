# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_j ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_j )
# Title: J. 転倒数
# Language: Ruby (2.3.3)
# Submitted: 2017-07-30 02:12:44 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1471183 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

class BIT
  attr_reader :bit
  def initialize(n)
    @n = n
    @bit = Array.new(@n + 1, 0)
  end
  def sum(i)
    s = 0
    while i > 0
      s +=  @bit[i]
      i -= i & -i
    end
    return s
  end
  def add(i, x)
    # i += 1
    while i <= @n
      @bit[i] += x
      i += i & -i
    end
  end
end

ans = 0
bit = BIT.new(n)
n.times do |j|
  ans += j - bit.sum(arr[j])
  bit.add(arr[j], 1)
end

puts ans
