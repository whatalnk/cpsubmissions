# Contest ID: abc086
# Problem ID: abc086_a ( https://atcoder.jp/contests/abc086/tasks/abc086_a )
# Title: A. Product
# Language: Ruby (2.3.3)
# Submitted: 2018-01-22 15:16:50 +0000 UTC ( https://atcoder.jp/contests/abc086/submissions/2009711 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
x = a * b
if x.even? then
  puts "Even"
else
  puts "Odd"
end
  