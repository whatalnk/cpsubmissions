# Contest ID: arc020
# Problem ID: arc020_1 ( https://atcoder.jp/contests/arc020/tasks/arc020_1 )
# Title: A. 石を滑らせるゲーム
# Language: Ruby (1.9.3)
# Submitted: 2015-08-14 06:45:53 +0000 UTC ( https://atcoder.jp/contests/arc020/submissions/469506 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a.abs() < b.abs() then
  puts "Ant"
elsif a.abs() > b.abs() then
  puts "Bug"
else
  puts "Draw"
end
