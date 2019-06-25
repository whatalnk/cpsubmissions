# Contest ID: abc057
# Problem ID: abc057_a ( https://atcoder.jp/contests/abc057/tasks/abc057_a )
# Title: A. Remaining Time
# Language: Ruby (2.3.3)
# Submitted: 2017-03-26 12:04:03 +0000 UTC ( https://atcoder.jp/contests/abc057/submissions/1181253 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if (a + b) >= 24 then
  puts (a + b) - 24
else
  puts (a + b)
end
