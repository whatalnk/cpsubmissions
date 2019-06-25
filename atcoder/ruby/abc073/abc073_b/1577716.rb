# Contest ID: abc073
# Problem ID: abc073_b ( https://atcoder.jp/contests/abc073/tasks/abc073_b )
# Title: B. Theater
# Language: Ruby (2.3.3)
# Submitted: 2017-09-09 12:05:47 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1577716 ) 

n = gets.chomp.to_i
ans = 0
n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  ans += (r - l + 1)
end
puts ans