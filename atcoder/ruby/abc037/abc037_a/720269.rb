# Contest ID: abc037
# Problem ID: abc037_a ( https://atcoder.jp/contests/abc037/tasks/abc037_a )
# Title: A. 饅頭
# Language: Ruby (2.3.3)
# Submitted: 2016-05-07 12:40:27 +0000 UTC ( https://atcoder.jp/contests/abc037/submissions/720269 ) 

a, b, c = gets.chomp.split.map(&:to_i)
puts c / [a, b].min
