# Contest ID: arc018
# Problem ID: arc018_2 ( https://atcoder.jp/contests/arc018/tasks/arc018_2 )
# Title: B. 格子点と整数
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 08:36:51 +0000 UTC ( https://atcoder.jp/contests/arc018/submissions/1098612 ) 

n = gets.chomp.to_i
coors = []
n.times do
  coors << gets.chomp.split(" ").map(&:to_i)
end
s = []
coors.combination(3).each do |x, y, z|
  ss = ((y[0] - x[0]) * (z[1] - x[1]) - (y[1] - x[1]) * (z[0] - x[0])).abs
  if ss.even? && ss != 0
    s << ss
  end
end
puts s.size