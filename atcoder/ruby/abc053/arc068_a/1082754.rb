# Contest ID: abc053
# Problem ID: arc068_a ( https://atcoder.jp/contests/abc053/tasks/arc068_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-01-28 12:37:47 +0000 UTC ( https://atcoder.jp/contests/abc053/submissions/1082754 ) 

x = gets.chomp.to_i
d = x / 11
r = x % 11
if r == 0 then
  puts d * 2
elsif r < 7 then
  puts d * 2 + 1
else
  puts (d + 1) * 2
end