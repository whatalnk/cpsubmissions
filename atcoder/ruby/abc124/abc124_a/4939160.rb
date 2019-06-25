# Contest ID: abc124
# Problem ID: abc124_a ( https://atcoder.jp/contests/abc124/tasks/abc124_a )
# Title: A. Buttons
# Language: Ruby (2.3.3)
# Submitted: 2019-04-13 12:02:30 +0000 UTC ( https://atcoder.jp/contests/abc124/submissions/4939160 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
puts [2 * a - 1, 2 * b - 1, a + b].max