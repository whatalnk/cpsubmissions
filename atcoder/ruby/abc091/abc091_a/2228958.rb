# Contest ID: abc091
# Problem ID: abc091_a ( https://atcoder.jp/contests/abc091/tasks/abc091_a )
# Title: A. Two Coins
# Language: Ruby (2.3.3)
# Submitted: 2018-03-18 13:37:06 +0000 UTC ( https://atcoder.jp/contests/abc091/submissions/2228958 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if a + b >= c then
  puts "Yes"
else
  puts "No"
end
  