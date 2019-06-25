# Contest ID: abc102
# Problem ID: abc102_b ( https://atcoder.jp/contests/abc102/tasks/abc102_b )
# Title: B. Maximum Difference
# Language: Ruby (2.3.3)
# Submitted: 2018-07-05 12:36:10 +0000 UTC ( https://atcoder.jp/contests/abc102/submissions/2793965 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
puts a.max - a.min
