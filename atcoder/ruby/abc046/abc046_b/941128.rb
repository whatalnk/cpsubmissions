# Contest ID: abc046
# Problem ID: abc046_b ( https://atcoder.jp/contests/abc046/tasks/abc046_b )
# Title: B. AtCoDeerくんとボール色塗り / Painting Balls with AtCoDeer
# Language: Ruby (2.3.3)
# Submitted: 2016-10-22 15:02:53 +0000 UTC ( https://atcoder.jp/contests/abc046/submissions/941128 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
puts k * (k - 1)**(n - 1)