# Contest ID: abc115
# Problem ID: abc115_b ( https://atcoder.jp/contests/abc115/tasks/abc115_b )
# Title: B. Christmas Eve Eve
# Language: Ruby (2.3.3)
# Submitted: 2019-01-07 12:09:11 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/3956227 ) 

n = gets.chomp.to_i
s = 0
a = 0
n.times do
  price = gets.chomp.to_i
  s += price
  a = price if price > a
end

puts s - a / 2
