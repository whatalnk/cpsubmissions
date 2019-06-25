# Contest ID: arc046
# Problem ID: arc046_a ( https://atcoder.jp/contests/arc046/tasks/arc046_a )
# Title: A. ゾロ目数
# Language: Ruby (2.1.5p273)
# Submitted: 2015-12-14 00:28:36 +0000 UTC ( https://atcoder.jp/contests/arc046/submissions/593944 ) 

n = gets.chomp.to_i
zorome = [1, 11, 111, 1111, 11111, 111111].product((1..9).to_a)
p zorome[n-1].inject(:*)
