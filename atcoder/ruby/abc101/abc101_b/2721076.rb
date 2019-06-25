# Contest ID: abc101
# Problem ID: abc101_b ( https://atcoder.jp/contests/abc101/tasks/abc101_b )
# Title: B. Digit Sums
# Language: Ruby (2.3.3)
# Submitted: 2018-06-23 12:13:21 +0000 UTC ( https://atcoder.jp/contests/abc101/submissions/2721076 ) 

n = gets.chomp.to_i
nn = n
s = 0
while nn > 0
  a = nn % 10
  nn /= 10
  s += a
end
if n % s == 0 then
  puts "Yes"
else
  puts "No"
end