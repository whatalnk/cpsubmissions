# Contest ID: abc059
# Problem ID: abc059_b ( https://atcoder.jp/contests/abc059/tasks/abc059_b )
# Title: B. Comparison
# Language: Ruby (2.3.3)
# Submitted: 2017-04-22 12:05:11 +0000 UTC ( https://atcoder.jp/contests/abc059/submissions/1233826 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
if a > b then
  puts "GREATER"
elsif a < b then
  puts "LESS"
else
  puts "EQUAL"
end
