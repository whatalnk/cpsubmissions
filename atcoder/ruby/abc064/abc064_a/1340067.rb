# Contest ID: abc064
# Problem ID: abc064_a ( https://atcoder.jp/contests/abc064/tasks/abc064_a )
# Title: A. RGB Cards
# Language: Ruby (2.3.3)
# Submitted: 2017-06-10 12:04:15 +0000 UTC ( https://atcoder.jp/contests/abc064/submissions/1340067 ) 

r, g, b = gets.chomp.split(" ").map(&:to_i)
n = r * 100 + g * 10 + b
if n % 4 == 0 then
  puts "YES"
else
  puts "NO"
end
