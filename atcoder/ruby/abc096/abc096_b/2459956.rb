# Contest ID: abc096
# Problem ID: abc096_b ( https://atcoder.jp/contests/abc096/tasks/abc096_b )
# Title: B. Maximum Sum
# Language: Ruby (2.3.3)
# Submitted: 2018-05-05 12:05:02 +0000 UTC ( https://atcoder.jp/contests/abc096/submissions/2459956 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i).sort

k = gets.chomp.to_i

k.times do
  c *= 2
end
puts a + b + c