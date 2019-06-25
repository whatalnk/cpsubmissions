# Contest ID: arc004
# Problem ID: arc004_1 ( https://atcoder.jp/contests/arc004/tasks/arc004_1 )
# Title: A. 2点間距離の最大値 ( The longest distance )
# Language: Ruby (1.9.3)
# Submitted: 2015-07-31 08:22:22 +0000 UTC ( https://atcoder.jp/contests/arc004/submissions/457702 ) 

n = gets.chomp.to_i
ps = []
while line = gets
  ps << line.chomp.split(" ").map(&:to_i)
end
res = 0

def calcDist(pair)
  p1 = pair[0]
  p2 = pair[1]
  return (p1[0] - p2[0])**2 + (p1[1] - p2[1])**2
end

ps.combination(2).each do |pair|
  d = calcDist(pair)
  if d > res
    res = d
  end
end
p Math.sqrt(res)
