# Contest ID: arc051
# Problem ID: arc051_a ( https://atcoder.jp/contests/arc051/tasks/arc051_a )
# Title: A. 塗り絵
# Language: Ruby (2.3.3)
# Submitted: 2016-07-22 22:34:14 +0000 UTC ( https://atcoder.jp/contests/arc051/submissions/814227 ) 

x1, y1, r = gets.chomp.split(" ").map(&:to_f)
x2, y2, x3, y3 = gets.chomp.split(" ").map(&:to_f)

def sqdist(x1, y1, x2, y2)
  return (x1 - x2)**2 + (y1 - y2)**2
end

if (x1 + r <= x3) && (x1 - r >= x2) && (y1 + r <= y3) && (y1 - r >= y2) then
  red = false
  blue = true
elsif (sqdist(x1, y1, x2, y2) <= r**2) && (sqdist(x1, y1, x3, y3) <= r**2) && (sqdist(x1, y1, x2, y3) <= r**2) && (sqdist(x1, y1, x3, y2) <= r**2) then
  red = true
  blue = false
else
  red = true
  blue = true
end
if red then
  puts "YES"
else
  puts "NO"
end
if blue then
  puts "YES"
else
  puts "NO"
end
