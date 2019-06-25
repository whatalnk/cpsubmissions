# Contest ID: abc073
# Problem ID: abc073_d ( https://atcoder.jp/contests/abc073/tasks/abc073_d )
# Title: D. joisino's travel
# Language: Ruby (2.3.3)
# Submitted: 2017-09-11 05:19:07 +0000 UTC ( https://atcoder.jp/contests/abc073/submissions/1587390 ) 

n, m, r = gets.chomp.split(" ").map(&:to_i)
rr = gets.chomp.split(" ").map(&:to_i)
MAX_C = 2 << 31
g = Array.new(n+1){Array.new(n+1, MAX_C)}
(n+1).times do |i|
  g[i][i] = 0
end
m.times do
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  g[a][b] = c
  g[b][a] = c
end

# Warshall floyd

1.upto(n) do |k|
  1.upto(n) do |i|
    1.upto(n) do |j|
      g[i][j] = g[i][k] + g[k][j] if g[i][k] + g[k][j] < g[i][j]
    end
  end
end

ans = []

rr.permutation do |x|
  dist = 0
  (r-1).times do |i|
    dist += g[x[i]][x[i+1]]
  end
  ans << dist
end

puts ans.min