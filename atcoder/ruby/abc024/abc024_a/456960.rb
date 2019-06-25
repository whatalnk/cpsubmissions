# Contest ID: abc024
# Problem ID: abc024_a ( https://atcoder.jp/contests/abc024/tasks/abc024_a )
# Title: A. 動物園
# Language: Ruby (2.1.5p273)
# Submitted: 2015-07-29 08:42:47 +0000 UTC ( https://atcoder.jp/contests/abc024/submissions/456960 ) 

a, b, c, k = gets.chomp.split(" ").map(&:to_i)
s, t = gets.chomp.split(" ").map(&:to_i)
sum = a * s + b * t
if (s + t) >= k then
  puts sum - c * (s + t)
else
  puts sum
end
