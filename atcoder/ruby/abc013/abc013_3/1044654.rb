# Contest ID: abc013
# Problem ID: abc013_3 ( https://atcoder.jp/contests/abc013/tasks/abc013_3 )
# Title: C. 節制
# Language: Ruby (1.9.3)
# Submitted: 2016-12-25 14:24:24 +0000 UTC ( https://atcoder.jp/contests/abc013/submissions/1044654 ) 

n, h = gets.chomp.split(" ").map(&:to_i)
a, b, c, d, e = gets.chomp.split(" ").map(&:to_i)
cost = []
(0..n).each do |x|
  y = [((n - x) * e - h - b * x) / (d + e) + 1, 0].max
  cost << a * x + c * y
end
puts cost.min