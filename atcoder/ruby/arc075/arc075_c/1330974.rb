# Contest ID: arc075
# Problem ID: arc075_c ( https://atcoder.jp/contests/arc075/tasks/arc075_c )
# Title: E. Meaningful Mean
# Language: Ruby (2.3.3)
# Submitted: 2017-06-04 07:45:20 +0000 UTC ( https://atcoder.jp/contests/arc075/submissions/1330974 ) 

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
    i += 1
    while i <= @n
      @bit[i] += x
      i += i & -i
    end
  end
end

n, k = gets.chomp.split(" ").map(&:to_i)
a = [0]
a += readlines.map{|x| x.chomp.to_i - k}

b = [0]
n.times do |i|
  b << b[i] + a[i+1]
end

b_s = b.sort
c = b.map{|e| b_s.bsearch_index{|x| x >= e}}

bit = BIT.new(n+1)

ans = 0
c.each do |i|
  ans += bit.sum(i+1)
  bit.add(i, 1)
end
puts ans