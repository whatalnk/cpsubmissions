# Contest ID: abc097
# Problem ID: abc097_a ( https://atcoder.jp/contests/abc097/tasks/abc097_a )
# Title: A. Colorful Transceivers
# Language: Ruby (2.3.3)
# Submitted: 2018-06-06 01:36:29 +0000 UTC ( https://atcoder.jp/contests/abc097/submissions/2624137 ) 

a, b, c, d = gets.chomp.split(" ").map(&:to_i)
if (a - c).abs <= d then
  puts "Yes"
elsif (a - b).abs <= d && (b - c).abs <= d then
  puts "Yes"
else
  puts "No"
end
  