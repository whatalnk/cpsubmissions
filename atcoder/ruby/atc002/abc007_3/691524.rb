# Contest ID: atc002
# Problem ID: abc007_3 ( https://atcoder.jp/contests/atc002/tasks/abc007_3 )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2016-04-10 12:40:17 +0000 UTC ( https://atcoder.jp/contests/atc002/submissions/691524 ) 

r, c = gets.chomp.split(" ").map(&:to_i)
sx, sy = gets.chomp.split(" ").map(&:to_i)
gx, gy = gets.chomp.split(" ").map(&:to_i)
maize = []
r.times do
  maize << gets.chomp.split("")
end
dist = Array.new(r).map{Array.new(c, -1)}
dist[sx-1][sy-1] = 0
queue = [[sx, sy]]

direction = [[0, 1], [1, 0], [0, -1], [-1, 0]]
while !queue.empty?
  x0, y0 = queue.shift
  curr = dist[x0-1][y0-1]
  direction.each do |dx, dy|
    x1 = x0 + dx
    y1 = y0 + dy
    if (x1 > 1) and (x1 < r) and (y1 > 1) and (y1 < c) and (maize[x1-1][y1-1] == ".") and (dist[x1-1][y1-1] < 0) then
      dist[x1-1][y1-1] = curr + 1
      queue.push([x1, y1])
    end
  end
end
puts dist[gx-1][gy-1]
