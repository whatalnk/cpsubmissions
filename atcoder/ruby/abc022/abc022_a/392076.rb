# Contest ID: abc022
# Problem ID: abc022_a ( https://atcoder.jp/contests/abc022/tasks/abc022_a )
# Title: A. Best Body
# Language: Ruby (1.9.3p550)
# Submitted: 2015-04-25 12:15:26 +0000 UTC ( https://atcoder.jp/contests/abc022/submissions/392076 ) 

n, s, t = gets.chomp.split(" ").map(&:to_i)
w = gets.chomp.to_i
if w >= s and w <= t then
  days = 1
else
  days = 0
end
(n-1).times do |d|
  w += gets.chomp.to_i
  if w >= s and w <= t then
    days += 1
  end
end
puts days