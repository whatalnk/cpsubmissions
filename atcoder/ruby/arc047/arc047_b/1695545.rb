# Contest ID: arc047
# Problem ID: arc047_b ( https://atcoder.jp/contests/arc047/tasks/arc047_b )
# Title: B. 同一円周上
# Language: Ruby (2.3.3)
# Submitted: 2017-10-20 14:43:48 +0000 UTC ( https://atcoder.jp/contests/arc047/submissions/1695545 ) 

N = gets.chomp.to_i
x = []
y = []
xx = []
yy = []
N.times do
  x_, y_ = gets.chomp.split(" ").map(&:to_i)
  x << x_
  y << y_
  xx << x_ + y_
  yy << x_ - y_
end
mx = [xx.min, xx.max]
my = [yy.min, yy.max]
d = [mx[1] - mx[0], my[1] - my[0]].max / 2
2.times do |i|
  [-1, 1].each do |j|
    pxx = mx[i] + d * j
    pyy = my[i] + d * j
    px = (pxx + pyy) / 2
    py = (pxx - pyy) / 2
    dist = (px - x[0]).abs + (py - y[0]).abs
    flag = true
    (1...N).each do |i|
      if dist != (px - x[i]).abs + (py - y[i]).abs
        flag = false
        break
      end
    end
    if flag
      puts "#{px} #{py}"
      exit
    end
  end
end