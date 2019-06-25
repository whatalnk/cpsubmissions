# Contest ID: abc065
# Problem ID: abc065_a ( https://atcoder.jp/contests/abc065/tasks/abc065_a )
# Title: A. Expired?
# Language: Ruby (2.3.3)
# Submitted: 2017-06-24 13:59:31 +0000 UTC ( https://atcoder.jp/contests/abc065/submissions/1378949 ) 

x, a, b = gets.chomp.split(" ").map(&:to_i)

if b - a <= 0 then
  puts "delicious"
elsif b - a <= x then
  puts "safe"
else
  puts "dangerous"
end
