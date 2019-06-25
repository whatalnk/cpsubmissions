# Contest ID: abc057
# Problem ID: abc057_c ( https://atcoder.jp/contests/abc057/tasks/abc057_c )
# Title: C. Digits in Multiplication
# Language: Ruby (2.3.3)
# Submitted: 2017-03-30 11:47:09 +0000 UTC ( https://atcoder.jp/contests/abc057/submissions/1191598 ) 

require 'prime'
n = gets.chomp.to_i
upper = Math.sqrt(n).to_i
ret = n.to_s.length
(1..upper).each do |i|
  if n % i == 0 then
    curr = ([i, n / i].max).to_s.length
    ret = [ret, curr].min
  end
end
puts ret