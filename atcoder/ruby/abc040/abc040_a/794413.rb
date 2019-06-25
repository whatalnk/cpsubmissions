# Contest ID: abc040
# Problem ID: abc040_a ( https://atcoder.jp/contests/abc040/tasks/abc040_a )
# Title: A. 赤赤赤赤青
# Language: Ruby (2.3.3)
# Submitted: 2016-07-07 09:05:34 +0000 UTC ( https://atcoder.jp/contests/abc040/submissions/794413 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
puts [x - 1, n - x].min
