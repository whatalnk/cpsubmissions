# Contest ID: abc086
# Problem ID: arc089_a ( https://atcoder.jp/contests/abc086/tasks/arc089_a )
# Title: C. Traveling
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 06:34:48 +0000 UTC ( https://atcoder.jp/contests/abc086/submissions/2040407 ) 

n = gets.chomp.to_i

t0 = 0
x0 = 0
y0 = 0

n.times do
  t, x, y = gets.chomp.split(" ").map(&:to_i)
  d = (x0 - x).abs + (y0 - y).abs
  dt = t - t0
  if d > dt || (d % 2 != dt % 2) then
    puts "No"
    exit
  end
  t0 = t
  x0 = x
  y0 = y
end
puts "Yes"
