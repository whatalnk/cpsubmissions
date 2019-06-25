# Contest ID: abc002
# Problem ID: abc002_3 ( https://atcoder.jp/contests/abc002/tasks/abc002_3 )
# Title: C. 直訴
# Language: Ruby (1.9.3)
# Submitted: 2014-09-18 12:49:20 +0000 UTC ( https://atcoder.jp/contests/abc002/submissions/234045 ) 

x1, y1, x2, y2, x3, y3 = gets.chomp.split(" ").map(&:to_i)
x2 = x2 - x1
y2 = y2 - y1
x3 = x3 - x1
y3 = y3 - y1
print (x2*y3 - y2*x3).abs.to_f / 2, "\n"