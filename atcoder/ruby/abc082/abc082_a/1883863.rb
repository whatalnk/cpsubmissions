# Contest ID: abc082
# Problem ID: abc082_a ( https://atcoder.jp/contests/abc082/tasks/abc082_a )
# Title: A. Round Up the Mean
# Language: Ruby (2.3.3)
# Submitted: 2017-12-18 03:32:58 +0000 UTC ( https://atcoder.jp/contests/abc082/submissions/1883863 ) 

a, b = gets.chomp.split(" ").map(&:to_f)
puts ((a + b) / 2).ceil
