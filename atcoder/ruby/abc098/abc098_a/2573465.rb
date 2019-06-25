# Contest ID: abc098
# Problem ID: abc098_a ( https://atcoder.jp/contests/abc098/tasks/abc098_a )
# Title: A. Add Sub Mul
# Language: Ruby (2.3.3)
# Submitted: 2018-05-27 02:19:03 +0000 UTC ( https://atcoder.jp/contests/abc098/submissions/2573465 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
puts [a + b, a - b, a * b].max