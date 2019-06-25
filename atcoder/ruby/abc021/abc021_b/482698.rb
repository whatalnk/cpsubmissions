# Contest ID: abc021
# Problem ID: abc021_b ( https://atcoder.jp/contests/abc021/tasks/abc021_b )
# Title: B. 嘘つきの高橋くん
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-30 14:11:12 +0000 UTC ( https://atcoder.jp/contests/abc021/submissions/482698 ) 

n = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.to_i
towns = gets.chomp.split(" ").map(&:to_i)
if towns.include?(a) or towns.include?(b) then
  puts "NO"
elsif towns.length != towns.uniq.length then
  puts "NO"
else
  puts "YES"
end
