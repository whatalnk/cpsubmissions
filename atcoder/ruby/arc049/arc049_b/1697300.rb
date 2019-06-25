# Contest ID: arc049
# Problem ID: arc049_b ( https://atcoder.jp/contests/arc049/tasks/arc049_b )
# Title: B. 高橋ノルム君
# Language: Ruby (2.3.3)
# Submitted: 2017-10-21 14:57:08 +0000 UTC ( https://atcoder.jp/contests/arc049/submissions/1697300 ) 

N = gets.chomp.to_i
x = []
y = []
c = []
N.times do
  x_, y_, c_ = gets.chomp.split(" ").map(&:to_f)
  x << x_
  y << y_
  c << c_
end
low = 0.0
high = 10**8
mid = (low + high) / 2
(2<<6).times do
  l = []
  r = []
  u = []
  b = []
  N.times do |i|
    w = mid / c[i]
    l << x[i] - w
    r << x[i] + w
    u << y[i] + w
    b << y[i] - w
  end
  if l.max <= r.min && b.max <= u.min
    high = mid
  else
    low = mid
  end
  mid = (low + high) / 2
end
puts mid