# Contest ID: NYC2015
# Problem ID: nyc2015_1 ( https://atcoder.jp/contests/NYC2015/tasks/nyc2015_1 )
# Title: A. 2015
# Language: Ruby (1.9.3)
# Submitted: 2015-01-04 05:44:16 +0000 UTC ( https://atcoder.jp/contests/NYC2015/submissions/313529 ) 

n = gets.chomp.to_i
n1 = n.to_s(2)
n2 = n1.reverse
if n1 == n2 then
  puts "Yes"
else
  puts "No"
end
