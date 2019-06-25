# Contest ID: abc108
# Problem ID: abc108_a ( https://atcoder.jp/contests/abc108/tasks/abc108_a )
# Title: A. Pair
# Language: Ruby (2.3.3)
# Submitted: 2018-09-01 12:02:32 +0000 UTC ( https://atcoder.jp/contests/abc108/submissions/3112604 ) 

k = gets.chomp.to_i
if k.even?
  puts (k / 2) ** 2
else
  puts (k / 2) * (k / 2 + 1)
end