# Contest ID: abc051
# Problem ID: abc051_c ( https://atcoder.jp/contests/abc051/tasks/abc051_c )
# Title: C. Back and Forth
# Language: Ruby (2.3.3)
# Submitted: 2017-01-07 13:25:24 +0000 UTC ( https://atcoder.jp/contests/abc051/submissions/1057326 ) 

sx, sy, tx, ty = gets.chomp.split(" ").map(&:to_i)
nv = ty - sy
nh = tx - sx
p1 = "U" * (nv - 1) + "R" * (nh - 1) + "U" + "R"
p2 = "D" * (nv - 1) + "L" * (nh - 1) + "D" + "L"
p3 = "L" + "U" * (nv + 1) + "R" * (nh + 1) + "D"
p4 = "R" + "D" * (nv + 1) + "L" * (nh + 1) + "U"
puts p1 + p2 + p3 + p4
