# Contest ID: abc064
# Problem ID: abc064_b ( https://atcoder.jp/contests/abc064/tasks/abc064_b )
# Title: B. Traveling AtCoDeer Problem
# Language: Ruby (2.3.3)
# Submitted: 2017-06-10 12:06:47 +0000 UTC ( https://atcoder.jp/contests/abc064/submissions/1340552 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
puts a.last - a[0]
