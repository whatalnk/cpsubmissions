# Contest ID: abc039
# Problem ID: abc039_a ( https://atcoder.jp/contests/abc039/tasks/abc039_a )
# Title: A. 高橋直体
# Language: Ruby (2.3.3)
# Submitted: 2016-07-07 09:10:35 +0000 UTC ( https://atcoder.jp/contests/abc039/submissions/794421 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
puts (a * b + b * c + a * c) * 2
