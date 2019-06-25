# Contest ID: arc042
# Problem ID: arc042_a ( https://atcoder.jp/contests/arc042/tasks/arc042_a )
# Title: A. 掲示板
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-22 08:15:03 +0000 UTC ( https://atcoder.jp/contests/arc042/submissions/473972 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
a = (1..n).to_a
b = []
while line = gets
  b << line.chomp.to_i
end
puts (b.reverse + a).uniq
