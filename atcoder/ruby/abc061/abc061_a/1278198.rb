# Contest ID: abc061
# Problem ID: abc061_a ( https://atcoder.jp/contests/abc061/tasks/abc061_a )
# Title: A. Between Two Integers
# Language: Ruby (2.3.3)
# Submitted: 2017-05-13 12:01:32 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1278198 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if c >= a && c <= b then
  puts "Yes"
else
  puts "No"
end
