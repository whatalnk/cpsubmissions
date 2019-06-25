# Contest ID: abc030
# Problem ID: abc030_b ( https://atcoder.jp/contests/abc030/tasks/abc030_b )
# Title: B. 時計盤
# Language: Ruby (2.1.5p273)
# Submitted: 2015-10-24 14:15:07 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/538333 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

longer = ((720r/(24*60)) * (n*60 + m)) % 360
shorter = (360r/60) * m

r = (longer - shorter).abs.to_f

puts [r, 360-r].min
