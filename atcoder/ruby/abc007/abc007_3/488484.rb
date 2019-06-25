# Contest ID: abc007
# Problem ID: abc007_3 ( https://atcoder.jp/contests/abc007/tasks/abc007_3 )
# Title: C. 幅優先探索
# Language: Ruby (1.9.3)
# Submitted: 2015-09-08 08:19:22 +0000 UTC ( https://atcoder.jp/contests/abc007/submissions/488484 ) 

r, c = gets.chomp.split(" ").map(&:to_i)
sy, sx = gets.chomp.split(" ").map(&:to_i)
gy, gx = gets.chomp.split(" ").map(&:to_i)
maze = []
r.times do
  maze << gets.chomp.split("")
end
Inf = 10000
Coor = Struct.new(:x, :y)
d = Array.new(r).map{Array.new(c, Inf)}
dx = [1, 0, -1, 0]
dy = [0, 1, 0, -1]
que = []
que.push Coor.new(sx, sy)
d[sy-1][sx-1] = 0
while que.size > 0
  coor = que.shift
  break if coor.x == gx && coor.y == gy
  dx.zip(dy) do |ix, iy|
    nx = coor.x + ix
    ny = coor.y + iy
    if 1 <= nx && nx <= c && 1 <= ny && ny <= r && maze[ny-1][nx-1] != "#" && d[ny-1][nx-1] == Inf then
      que.push Coor.new(nx, ny)
      d[ny-1][nx-1] = d[coor.y-1][coor.x-1] + 1
    end
  end
end
puts d[gy-1][gx-1]