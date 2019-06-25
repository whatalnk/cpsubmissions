# Contest ID: abc051
# Problem ID: abc051_d ( https://atcoder.jp/contests/abc051/tasks/abc051_d )
# Title: D. Candidates of No Shortest Paths
# Language: Ruby (2.3.3)
# Submitted: 2018-09-18 04:06:24 +0000 UTC ( https://atcoder.jp/contests/abc051/submissions/3219225 ) 

# ABC051 D
INF = 10**6
n, m = gets.chomp.split(" ").map(&:to_i)
cost = Array.new(n + 1){Array.new(n + 1, INF)}
(n+1).times do |i|
  cost[i][i] = 0
end
m.times do
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  cost[a][b] = c
  cost[b][a] = c
end

edges = Array.new(n + 1){Array.new(n + 1, 0)}

1.upto(n) do |s|
  # dijkstra: from s to each node
  d = Array.new(n+1, INF)
  used = Array.new(n+1, false)
  prev = Array.new(n+1, -1)
  d[s] = 0

  while true
    v = -1
    1.upto(n) do |u|
      if !used[u] && (v == -1 || d[u] < d[v])
        v = u
      end
    end
    break if v == -1
    used[v] = true
    1.upto(n) do |u|
      if d[u] > d[v] + cost[v][u]
        d[u] = d[v] + cost[v][u]
        prev[u] = v
      end
    end
  end

  # get path: from s to each node
  1.upto(n) do |to|
    path = []
    next if to == s
    t_ = to
    loop do
      break if t_ == -1
      path << t_
      t_ = prev[t_]
    end
    path.each_cons(2) do |a, b|
      edges[a][b] = 1
      edges[b][a] = 1
    end
  end
end

puts m - edges.map{|row| row.inject(:+)}.inject(:+) / 2