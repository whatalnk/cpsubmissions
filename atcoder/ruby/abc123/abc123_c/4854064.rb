# Contest ID: abc123
# Problem ID: abc123_c ( https://atcoder.jp/contests/abc123/tasks/abc123_c )
# Title: C. Five Transportations
# Language: Ruby (2.3.3)
# Submitted: 2019-04-06 12:44:23 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/4854064 ) 

n = gets.chomp.to_i
a = []
5.times do
  a << gets.chomp.to_i
end
amin = a.min
r = n % amin
g = n / amin
g += 1 if r > 0
puts 5 + g - 1