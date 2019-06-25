# Contest ID: ddcc2017-qual
# Problem ID: ddcc2017_qual_b ( https://atcoder.jp/contests/ddcc2017-qual/tasks/ddcc2017_qual_b )
# Title: B. 鉛筆
# Language: Ruby (2.3.3)
# Submitted: 2017-10-07 12:03:40 +0000 UTC ( https://atcoder.jp/contests/ddcc2017-qual/submissions/1656871 ) 

a, b, c, d = gets.chomp.split(" ").map(&:to_i)
puts a * 1728 + b * 144 + c * 12 + d
