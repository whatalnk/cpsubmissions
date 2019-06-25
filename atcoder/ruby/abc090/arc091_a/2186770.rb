# Contest ID: abc090
# Problem ID: arc091_a ( https://atcoder.jp/contests/abc090/tasks/arc091_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-03-11 12:25:53 +0000 UTC ( https://atcoder.jp/contests/abc090/submissions/2186770 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a == 1 && b == 1
  puts 1
elsif a == 1 || b == 1 then
  puts a * b - 2
else
  puts a * b - ((a - 2 + b - 2) * 2 + 4)
end