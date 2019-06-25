# Contest ID: agc004
# Problem ID: agc004_a ( https://atcoder.jp/contests/agc004/tasks/agc004_a )
# Title: A. Divide a Cuboid
# Language: Ruby (2.3.3)
# Submitted: 2018-03-21 04:08:21 +0000 UTC ( https://atcoder.jp/contests/agc004/submissions/2238246 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)

total = a * b * c
r1 = (a / 2) * b * c
b1 = total - r1

r2 = a * (b / 2) * c
b2 = total - r2

r3 = a * b * (c / 2)
b3 = total - r3

puts [(r1 - b1).abs, (r2 - b2).abs, (r3 - b3).abs].min
