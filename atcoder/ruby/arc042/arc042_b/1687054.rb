# Contest ID: arc042
# Problem ID: arc042_b ( https://atcoder.jp/contests/arc042/tasks/arc042_b )
# Title: B. アリの高橋くん
# Language: Ruby (2.3.3)
# Submitted: 2017-10-15 10:28:38 +0000 UTC ( https://atcoder.jp/contests/arc042/submissions/1687054 ) 

x0, y0 = gets.chomp.split(" ").map(&:to_f)
N = gets.chomp.to_i
points = []
N.times do
  points << gets.chomp.split(" ").map(&:to_f)
end

points << points[0]

ans = (2<<17).to_f
N.times do |i|
  x1, y1 = points[i]
  x2, y2 = points[i+1]
  x2 -= x1
  y2 -= y1
  x = x0 - x1
  y = y0 - y1
  d = (x * y2 - y * x2).abs / Math.sqrt(x2**2 + y2**2)
  ans = d if d < ans
end

puts ans