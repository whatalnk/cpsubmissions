# Contest ID: abc055
# Problem ID: abc055_b ( https://atcoder.jp/contests/abc055/tasks/abc055_b )
# Title: B. Training Camp
# Language: Ruby (2.3.3)
# Submitted: 2017-02-18 13:37:45 +0000 UTC ( https://atcoder.jp/contests/abc055/submissions/1119046 ) 

require 'prime'
h = Hash.new(0)
n = gets.chomp.to_i
1.upto(n) do |i|
  Prime.prime_division(i).each do |a, b|
    h[a] += b
  end
end
ret = 1
h.each do |k, v|
  ret *= (k ** v) % (10**9 + 7)
end
puts ret % (10**9 + 7)