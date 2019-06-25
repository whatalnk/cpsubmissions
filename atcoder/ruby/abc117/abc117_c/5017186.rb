# Contest ID: abc117
# Problem ID: abc117_c ( https://atcoder.jp/contests/abc117/tasks/abc117_c )
# Title: C. Streamline
# Language: Ruby (2.3.3)
# Submitted: 2019-04-18 10:35:30 +0000 UTC ( https://atcoder.jp/contests/abc117/submissions/5017186 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i).sort

y = Array.new(m - 1, 0)
(m - 1).times do |i|
  y[i] = x[i + 1] - x[i]
end

y.sort!

xmax = x.last
xmin =  x.first
ymaxs = y.last(n - 1)

if ymaxs.empty?
  ysum = 0
else
  ysum = ymaxs.inject(:+)
end

puts xmax - xmin - ysum