# Contest ID: arc004
# Problem ID: arc004_1 ( https://atcoder.jp/contests/arc004/tasks/arc004_1 )
# Title: A. 2点間距離の最大値 ( The longest distance )
# Language: Ruby (2.3.3)
# Submitted: 2018-02-21 07:43:04 +0000 UTC ( https://atcoder.jp/contests/arc004/submissions/2120036 ) 

N = gets.chomp.to_i
points = []
N.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  points << [x, y]
end
ans = 0
(0...N).each do |i|
  a = points[i]
  (i...N).each do |j|
    b = points[j]
    d = (b[0] - a[0])**2 + (b[1] - a[1])**2
    ans = [ans, d].max
  end
end
puts Math.sqrt(ans)
