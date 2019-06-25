# Contest ID: arc005
# Problem ID: arc005_2 ( https://atcoder.jp/contests/arc005/tasks/arc005_2 )
# Title: B. P-CASカードと高橋君
# Language: Ruby (1.9.3)
# Submitted: 2017-01-26 03:04:43 +0000 UTC ( https://atcoder.jp/contests/arc005/submissions/1079001 ) 

x, y, w = gets.chomp.split(" ")
x = x.to_i - 1
y = y.to_i - 1
calendar = []
9.times do
  calendar << gets.chomp.split("").map(&:to_i)
end

xx = [x, x, x, x]
yy = [y, y, y, y]

if w.include?("R") then
  xx = [x, x+1, x+2, x+3]
elsif w.include?("L") then
  xx = [x, x-1, x-2, x-3]
end

if w.include?("U") then
  yy = [y, y-1, y-2, y-3]
elsif w.include?("D") then
  yy = [y, y+1, y+2, y+3]
end

4.times do |i|
  if xx[i] > 8 then
    xx[i] = 8 - (xx[i] - 8)
  elsif xx[i] < 0 then
    xx[i] = xx[i].abs
  end
end

4.times do |i|
  if yy[i] > 8 then
    yy[i] = 8 - (yy[i] - 8)
  elsif yy[i] < 0 then
    yy[i] = yy[i].abs
  end
end

puts xx.zip(yy).map{|px, py| calendar[py][px]}.join("")
