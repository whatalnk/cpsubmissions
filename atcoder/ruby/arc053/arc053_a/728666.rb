# Contest ID: arc053
# Problem ID: arc053_a ( https://atcoder.jp/contests/arc053/tasks/arc053_a )
# Title: A. ドミノ色塗り
# Language: Ruby (2.3.3)
# Submitted: 2016-05-14 12:25:49 +0000 UTC ( https://atcoder.jp/contests/arc053/submissions/728666 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
puts (h - 1) * w + h * (w - 1)
