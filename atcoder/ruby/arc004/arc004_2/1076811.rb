# Contest ID: arc004
# Problem ID: arc004_2 ( https://atcoder.jp/contests/arc004/tasks/arc004_2 )
# Title: B. 2点間距離の最大と最小 ( Maximum and Minimum )
# Language: Ruby (1.9.3)
# Submitted: 2017-01-22 23:47:58 +0000 UTC ( https://atcoder.jp/contests/arc004/submissions/1076811 ) 

n = gets.chomp.to_i
dd = []
n.times do
  dd << gets.chomp.to_i
end
ddsum = dd.inject(:+)
puts ddsum
puts [0, dd.max * 2 - ddsum].max
