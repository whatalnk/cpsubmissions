# Contest ID: abc052
# Problem ID: abc052_a ( https://atcoder.jp/contests/abc052/tasks/abc052_a )
# Title: A. Two Rectangles
# Language: Ruby (2.3.3)
# Submitted: 2017-01-15 12:02:09 +0000 UTC ( https://atcoder.jp/contests/abc052/submissions/1064919 ) 

a, b, c, d = gets.chomp.split(" ").map(&:to_i)
s1 = a * b
s2 = c * d
if s1 >= s2 then
  puts s1
else
  puts s2
end
