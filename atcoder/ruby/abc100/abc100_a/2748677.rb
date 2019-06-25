# Contest ID: abc100
# Problem ID: abc100_a ( https://atcoder.jp/contests/abc100/tasks/abc100_a )
# Title: A. Happy Birthday!
# Language: Ruby (2.3.3)
# Submitted: 2018-06-27 05:02:40 +0000 UTC ( https://atcoder.jp/contests/abc100/submissions/2748677 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a <= 8 && b <= 8 then
  puts "Yay!"
else
  puts ":("
end
