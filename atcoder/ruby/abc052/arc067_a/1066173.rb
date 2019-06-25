# Contest ID: abc052
# Problem ID: arc067_a ( https://atcoder.jp/contests/abc052/tasks/arc067_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-01-15 12:29:33 +0000 UTC ( https://atcoder.jp/contests/abc052/submissions/1066173 ) 

require 'prime'
a = 10**9+7
n = gets.chomp.to_i
h = Hash.new(0)
(1..n).each do |i|
  x = Prime.prime_division(i)
  x.each do |n, e|
    h[n] += e
  end
end
ret = 1
h.values.each do |i|
  ret *= ((i + 1) % a)
end

puts ret % a
