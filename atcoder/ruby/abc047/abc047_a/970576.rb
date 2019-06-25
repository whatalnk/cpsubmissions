# Contest ID: abc047
# Problem ID: abc047_a ( https://atcoder.jp/contests/abc047/tasks/abc047_a )
# Title: A. キャンディーと2人の子供 / Fighting over Candies
# Language: Ruby (2.3.3)
# Submitted: 2016-11-06 12:06:38 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/970576 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if (a + b == c) || (b + c == a) || (c + a == b) then
  puts "Yes"
else
  puts "No"
end
