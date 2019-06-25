# Contest ID: abc084
# Problem ID: abc084_b ( https://atcoder.jp/contests/abc084/tasks/abc084_b )
# Title: B. Postal Code
# Language: Ruby (2.3.3)
# Submitted: 2018-01-20 05:15:53 +0000 UTC ( https://atcoder.jp/contests/abc084/submissions/1994079 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
if s[a] == "-" && !s[0...a].include?("-") && !s[(a + 1)..(a + b + 1)].include?("-")
  puts "Yes"
else
  puts "No"
end 