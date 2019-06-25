# Contest ID: abc067
# Problem ID: abc067_b ( https://atcoder.jp/contests/abc067/tasks/abc067_b )
# Title: B. Snake Toy
# Language: Ruby (2.3.3)
# Submitted: 2017-07-15 22:05:54 +0000 UTC ( https://atcoder.jp/contests/abc067/submissions/1432166 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
l = gets.chomp.split(" ").map(&:to_i).sort.reverse

puts l[0...k].inject(:+)