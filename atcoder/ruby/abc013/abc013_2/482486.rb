# Contest ID: abc013
# Problem ID: abc013_2 ( https://atcoder.jp/contests/abc013/tasks/abc013_2 )
# Title: B. 錠
# Language: Ruby (1.9.3)
# Submitted: 2015-08-30 09:37:57 +0000 UTC ( https://atcoder.jp/contests/abc013/submissions/482486 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
puts [(b - a).abs, (9 - b) + a + 1, b + 1 + (9 - a)].min