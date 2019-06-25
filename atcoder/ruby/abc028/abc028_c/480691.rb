# Contest ID: abc028
# Problem ID: abc028_c ( https://atcoder.jp/contests/abc028/tasks/abc028_c )
# Title: C. 数を3つ選ぶマン
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-29 12:53:05 +0000 UTC ( https://atcoder.jp/contests/abc028/submissions/480691 ) 

a = gets.chomp.split(" ").map(&:to_i)
res = []
a.combination(3){|n1, n2, n3| res << n1 + n2 + n3 }
puts res.sort[-3]
