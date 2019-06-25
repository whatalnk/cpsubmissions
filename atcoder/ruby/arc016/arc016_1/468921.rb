# Contest ID: arc016
# Problem ID: arc016_1 ( https://atcoder.jp/contests/arc016/tasks/arc016_1 )
# Title: A. クイズゲーム
# Language: Ruby (1.9.3)
# Submitted: 2015-08-12 05:44:40 +0000 UTC ( https://atcoder.jp/contests/arc016/submissions/468921 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
ans = (1..n).to_a
ans.delete(m)
puts ans[0]