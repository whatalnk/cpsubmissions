# Contest ID: abc053
# Problem ID: abc053_b ( https://atcoder.jp/contests/abc053/tasks/abc053_b )
# Title: B. A to Z String
# Language: Ruby (2.3.3)
# Submitted: 2017-01-28 12:09:02 +0000 UTC ( https://atcoder.jp/contests/abc053/submissions/1081367 ) 

s = gets.chomp
a = s.index("A")
z = s.rindex("Z")
puts z - a + 1