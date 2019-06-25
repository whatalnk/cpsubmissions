# Contest ID: abc099
# Problem ID: abc099_b ( https://atcoder.jp/contests/abc099/tasks/abc099_b )
# Title: B. Stone Monument
# Language: Ruby (2.3.3)
# Submitted: 2018-06-27 05:05:58 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/2748688 ) 

a, b = gets.chomp.split(" ").map(&:to_i)

d = b - a

puts (1 + d) * d / 2 - b