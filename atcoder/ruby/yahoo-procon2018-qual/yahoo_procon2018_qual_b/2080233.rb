# Contest ID: yahoo-procon2018-qual
# Problem ID: yahoo_procon2018_qual_b ( https://atcoder.jp/contests/yahoo-procon2018-qual/tasks/yahoo_procon2018_qual_b )
# Title: B. オークション
# Language: Ruby (2.3.3)
# Submitted: 2018-02-10 12:05:41 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2018-qual/submissions/2080233 ) 

x, k = gets.chomp.split(" ").map(&:to_i)
puts (x / (10**k) + 1) * (10**k)
