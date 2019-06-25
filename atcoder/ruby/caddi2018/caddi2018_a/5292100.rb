# Contest ID: caddi2018
# Problem ID: caddi2018_a ( https://atcoder.jp/contests/caddi2018/tasks/caddi2018_a )
# Title: C. Product and GCD
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 12:15:01 +0000 UTC ( https://atcoder.jp/contests/caddi2018/submissions/5292100 ) 

require 'prime'

n, p_ = gets.chomp.split(" ").map(&:to_i)
x = Prime.prime_division(p_)

ans = 1
x.each do |e, m|
  ans *= e ** (m / n)
end
puts ans