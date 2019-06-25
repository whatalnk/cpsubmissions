# Contest ID: abc110
# Problem ID: abc110_a ( https://atcoder.jp/contests/abc110/tasks/abc110_a )
# Title: A. Maximize the Formula
# Language: Ruby (2.3.3)
# Submitted: 2018-09-23 12:02:35 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/3249934 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i).sort

puts c * 10 + b + a