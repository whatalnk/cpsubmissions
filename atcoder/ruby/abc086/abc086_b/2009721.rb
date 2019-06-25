# Contest ID: abc086
# Problem ID: abc086_b ( https://atcoder.jp/contests/abc086/tasks/abc086_b )
# Title: B. 1 21
# Language: Ruby (2.3.3)
# Submitted: 2018-01-22 15:20:53 +0000 UTC ( https://atcoder.jp/contests/abc086/submissions/2009721 ) 

a, b = gets.chomp.split(" ")
x = (a + b).to_i
y = Math.sqrt(x).to_i
if y * y == x then
  puts "Yes"
else
  puts "No"
end
