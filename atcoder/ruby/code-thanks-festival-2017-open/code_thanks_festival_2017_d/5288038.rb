# Contest ID: code-thanks-festival-2017-open
# Problem ID: code_thanks_festival_2017_d ( https://atcoder.jp/contests/code-thanks-festival-2017-open/tasks/code_thanks_festival_2017_d )
# Title: D. Bus Tour
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 06:01:00 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2017-open/submissions/5288038 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
puts m - n.gcd(m)
