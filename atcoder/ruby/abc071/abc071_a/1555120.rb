# Contest ID: abc071
# Problem ID: abc071_a ( https://atcoder.jp/contests/abc071/tasks/abc071_a )
# Title: A. Meal Delivery
# Language: Ruby (2.3.3)
# Submitted: 2017-09-01 03:27:02 +0000 UTC ( https://atcoder.jp/contests/abc071/submissions/1555120 ) 

x, a, b = gets.chomp.split(" ").map(&:to_i)
if (x - a).abs < (x - b).abs then
  puts "A"
else
  puts "B"
end
