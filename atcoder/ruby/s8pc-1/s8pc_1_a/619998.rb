# Contest ID: s8pc-1
# Problem ID: s8pc_1_a ( https://atcoder.jp/contests/s8pc-1/tasks/s8pc_1_a )
# Title: A. E869120列車 (E869120 Trains)
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-25 03:38:43 +0000 UTC ( https://atcoder.jp/contests/s8pc-1/submissions/619998 ) 

n = gets.chomp.to_f

duration = 18 * 60.0

puts duration / (n - 1)