# Contest ID: abc096
# Problem ID: abc096_a ( https://atcoder.jp/contests/abc096/tasks/abc096_a )
# Title: A. Day of Takahashi
# Language: Ruby (2.3.3)
# Submitted: 2018-05-05 12:02:34 +0000 UTC ( https://atcoder.jp/contests/abc096/submissions/2459127 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a > b
  puts a - 1
else
  puts a
end