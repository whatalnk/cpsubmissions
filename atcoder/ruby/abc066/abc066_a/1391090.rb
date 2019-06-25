# Contest ID: abc066
# Problem ID: abc066_a ( https://atcoder.jp/contests/abc066/tasks/abc066_a )
# Title: A. ringring
# Language: Ruby (2.3.3)
# Submitted: 2017-07-01 12:02:31 +0000 UTC ( https://atcoder.jp/contests/abc066/submissions/1391090 ) 

puts gets.chomp.split(" ").map(&:to_i).sort()[0..1].inject(:+)