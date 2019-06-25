# Contest ID: apc001
# Problem ID: apc001_a ( https://atcoder.jp/contests/apc001/tasks/apc001_a )
# Title: A. Two Integers
# Language: Ruby (2.3.3)
# Submitted: 2018-02-03 15:25:58 +0000 UTC ( https://atcoder.jp/contests/apc001/submissions/2056072 ) 

x, y = gets.chomp.split(" ").map(&:to_i)

if x % y == 0 then
  puts -1
  exit
end

n = x * y + x

if n > 10**18 then
  puts -1
else
  puts n
end