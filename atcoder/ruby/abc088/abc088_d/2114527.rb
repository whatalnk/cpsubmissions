# Contest ID: abc088
# Problem ID: abc088_d ( https://atcoder.jp/contests/abc088/tasks/abc088_d )
# Title: D. Grid Repainting
# Language: Ruby (2.3.3)
# Submitted: 2018-02-19 02:22:06 +0000 UTC ( https://atcoder.jp/contests/abc088/submissions/2114527 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
$grid = []
blk = 0
H.times do
  row = gets.chomp.split("")
  row.each do |c|
    blk += 1 if c == "#"
  end
  $grid << row
end

INF = 10**9

$d = Array.new(H + 1){Array.new(W + 1, INF)}

$dx = [1, 0, -1, 0]
$dy = [0, 1, 0, -1]

def bfs()
  que = []
  que << [0, 0]
  $d[0][0] = 0
  while !que.empty?
    pos = que.shift
    break if pos[0] == H - 1 && pos[1] == W - 1
    4.times do |i|
      nx = pos[0] + $dx[i]
      ny = pos[1] + $dy[i]
      if 0 <= nx && nx < W && 0 <= ny && ny < H && $grid[ny][nx] != "#" && $d[ny][nx] == INF then
        que << [nx, ny]
        $d[ny][nx] = $d[pos[1]][pos[0]] + 1
      end
    end
  end
  return $d[H-1][W-1]
end

res = bfs()
if res == INF then
  puts -1
else
  puts H * W - blk - (res + 1)
end