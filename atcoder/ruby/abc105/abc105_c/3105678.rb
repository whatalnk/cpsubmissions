# Contest ID: abc105
# Problem ID: abc105_c ( https://atcoder.jp/contests/abc105/tasks/abc105_c )
# Title: C. Base -2 Number
# Language: Ruby (2.3.3)
# Submitted: 2018-08-31 02:35:53 +0000 UTC ( https://atcoder.jp/contests/abc105/submissions/3105678 ) 

n = gets.chomp.to_i

s = []

while n != 0
  if n.even?
    s << 0
    n /= -2
  else
    s << 1
    n -= 1
    n /= -2
  end
end
if s.empty?
  puts "0"
else
  puts s.join("").reverse
end