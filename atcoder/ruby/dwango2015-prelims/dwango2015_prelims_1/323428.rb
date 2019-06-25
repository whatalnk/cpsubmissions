# Contest ID: dwango2015-prelims
# Problem ID: dwango2015_prelims_1 ( https://atcoder.jp/contests/dwango2015-prelims/tasks/dwango2015_prelims_1 )
# Title: A. プレミアム会員
# Language: Ruby (1.9.3)
# Submitted: 2015-01-24 11:35:04 +0000 UTC ( https://atcoder.jp/contests/dwango2015-prelims/submissions/323428 ) 

n = gets.chomp.to_i
x = gets.chomp.to_i
res = x * 540 + (n - x) * 525
puts res
