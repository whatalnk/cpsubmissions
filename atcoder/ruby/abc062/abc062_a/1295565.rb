# Contest ID: abc062
# Problem ID: abc062_a ( https://atcoder.jp/contests/abc062/tasks/abc062_a )
# Title: A. Grouping
# Language: Ruby (2.3.3)
# Submitted: 2017-05-20 12:05:53 +0000 UTC ( https://atcoder.jp/contests/abc062/submissions/1295565 ) 

g1 = [1,3,5,7,8,10,12]
g2 = [4,6,9,11]
g3 = [2]

x, y = gets.chomp.split(" ").map(&:to_i)
if (g1.include?(x) && g1.include?(y)) || (g2.include?(x) && g2.include?(y)) || (g3.include?(x) && g3.include?(y)) then
  puts "Yes"
else
  puts "No"
end