# Contest ID: yahoo-procon2017-qual
# Problem ID: yahoo_procon2017_qual_b ( https://atcoder.jp/contests/yahoo-procon2017-qual/tasks/yahoo_procon2017_qual_b )
# Title: B. オークション
# Language: Ruby (2.3.3)
# Submitted: 2017-03-09 08:40:59 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2017-qual/submissions/1152508 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
puts a[0...k].inject(:+) + (0...k).inject(:+)
