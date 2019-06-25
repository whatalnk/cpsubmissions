# Contest ID: abc108
# Problem ID: abc108_b ( https://atcoder.jp/contests/abc108/tasks/abc108_b )
# Title: B. Ruined Square
# Language: Ruby (2.3.3)
# Submitted: 2018-09-01 12:28:33 +0000 UTC ( https://atcoder.jp/contests/abc108/submissions/3115539 ) 

x1, y1, x2, y2 = gets.chomp.split(" ").map(&:to_i)

x3 = 1 * (x2 - x1) + (-1) * (y2 - y1) + x1
y3 = 1 * (x2 - x1) + 1 * (y2 - y1) + y1

x4 = 1 * (x3 - x2) + (-1) * (y3 - y2) + x2
y4 = 1 * (x3 - x2) + 1 * (y3 - y2) + y2

puts [x3, y3, x4, y4].join(" ")