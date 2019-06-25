# Contest ID: agc019
# Problem ID: agc019_a ( https://atcoder.jp/contests/agc019/tasks/agc019_a )
# Title: A. Ice Tea Store
# Language: Ruby (2.3.3)
# Submitted: 2017-08-28 00:18:22 +0000 UTC ( https://atcoder.jp/contests/agc019/submissions/1549459 ) 

q, h, s, d = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
p1 = [q * 4, h * 2, s].min
p2 = [p1 * 2, d].min
if n == 1 then
  puts p1
else
  puts (n / 2) * p2 + (n % 2) * p1
end
