# Contest ID: abc121
# Problem ID: abc121_a ( https://atcoder.jp/contests/abc121/tasks/abc121_a )
# Title: A. White Cells
# Language: Ruby (2.3.3)
# Submitted: 2019-03-09 12:03:18 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/4515277 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
h, w = gets.chomp.split(" ").map(&:to_i)
puts H * W - (h * W + w * H - h * w)
