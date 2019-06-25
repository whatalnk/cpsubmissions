# Contest ID: abc118
# Problem ID: abc118_a ( https://atcoder.jp/contests/abc118/tasks/abc118_a )
# Title: A. B +/- A
# Language: Ruby (2.3.3)
# Submitted: 2019-02-26 02:45:36 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/4391099 ) 

a, b = gets.chomp.split(" ").map(&:to_i)

if b % a == 0
  puts b + a
else 
  puts b - a
end