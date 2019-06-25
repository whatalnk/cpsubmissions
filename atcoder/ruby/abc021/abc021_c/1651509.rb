# Contest ID: abc021
# Problem ID: abc021_c ( https://atcoder.jp/contests/abc021/tasks/abc021_c )
# Title: C. 正直者の高橋くん
# Language: Ruby (2.3.3)
# Submitted: 2017-10-04 11:58:34 +0000 UTC ( https://atcoder.jp/contests/abc021/submissions/1651509 ) 

MAX_C = 2 << 31
R = 1000000007
N = gets.chomp.to_i
g = Array.new(N+1){Array.new(N+1, MAX_C)}
(N+1).times do |i|
  g[i][i] = 0
end
a, b = gets.chomp.split(" ").map(&:to_i)
M = gets.chomp.to_i

M.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  g[x][y] = 1
  g[y][x] = 1
end

# Warshall floyd
1.upto(N) do |k|
  1.upto(N) do |i|
    1.upto(N) do |j|
      g[i][j] = g[i][k] + g[k][j] if g[i][k] + g[k][j] < g[i][j]
    end
  end
end

root = Array.new(N+1, 0)
root[a] = 1
0.upto(N) do |d|
  0.upto(N) do |cur|
    next if g[a][cur] != d
    1.upto(N) do |nex|
      if g[a][nex] == d + 1 && g[cur][nex] == 1
        root[nex] += root[cur]
        root[nex] %= R
      end
    end
  end
end

puts root[b]