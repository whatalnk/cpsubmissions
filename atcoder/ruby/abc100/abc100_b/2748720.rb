# Contest ID: abc100
# Problem ID: abc100_b ( https://atcoder.jp/contests/abc100/tasks/abc100_b )
# Title: B. Ringo's Favorite Numbers
# Language: Ruby (2.3.3)
# Submitted: 2018-06-27 05:13:59 +0000 UTC ( https://atcoder.jp/contests/abc100/submissions/2748720 ) 

d, n = gets.chomp.split(" ").map(&:to_i)
n += 1 if n == 100
if d == 0
  puts 1 * n
elsif d == 1
  puts 100 * n
elsif d == 2
  puts 10000 * n
end
