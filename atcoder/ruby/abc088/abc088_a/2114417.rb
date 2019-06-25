# Contest ID: abc088
# Problem ID: abc088_a ( https://atcoder.jp/contests/abc088/tasks/abc088_a )
# Title: A. Infinite Coins
# Language: Ruby (2.3.3)
# Submitted: 2018-02-19 01:06:08 +0000 UTC ( https://atcoder.jp/contests/abc088/submissions/2114417 ) 

n = gets.chomp.to_i
a = gets.chomp.to_i
b = n % 500
if b <= a then
  puts "Yes"
else
  puts "No"
end
