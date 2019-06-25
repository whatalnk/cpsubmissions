# Contest ID: chokudai_S001
# Problem ID: chokudai_S001_k ( https://atcoder.jp/contests/chokudai_S001/tasks/chokudai_S001_k )
# Title: K. 辞書順で何番目？
# Language: Ruby (2.3.3)
# Submitted: 2017-07-30 03:27:38 +0000 UTC ( https://atcoder.jp/contests/chokudai_S001/submissions/1471541 ) 

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
    i += 1
    while i <= @n
      @bit[i] += x
      i += i & -i
    end
  end
end

p_ = 10**9 + 7

perm = Array.new(n+1, 1)

(1..n).each do |i|
  perm[i] = perm[i-1] * i % p_
end

result = 1

bit = BIT.new(n)

arr.reverse.each_with_index do |a, i|
  result += bit.sum(a) * perm[i]
  result %= p_
  bit.add(a, 1)
end

puts result