# Contest ID: abc076
# Problem ID: abc076_b ( https://atcoder.jp/contests/abc076/tasks/abc076_b )
# Title: B. Addition and Multiplication
# Language: Ruby (2.3.3)
# Submitted: 2017-10-28 12:04:21 +0000 UTC ( https://atcoder.jp/contests/abc076/submissions/1717111 ) 

n = gets.chomp.to_i
k = gets.chomp.to_i
x = 1
n.times do
  a = x * 2
  b = x + k
  x = [a, b].min
end
puts x
