# Contest ID: arc056
# Problem ID: arc056_a ( https://atcoder.jp/contests/arc056/tasks/arc056_a )
# Title: A. みんなでワイワイみかん
# Language: Ruby (2.3.3)
# Submitted: 2016-07-21 14:39:14 +0000 UTC ( https://atcoder.jp/contests/arc056/submissions/813727 ) 

a, b, k, l = gets.chomp.split(" ").map(&:to_i)

x = k / l
y = k % l
puts x * b + [b, y * a].min
