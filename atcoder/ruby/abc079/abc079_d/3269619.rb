# Contest ID: abc079
# Problem ID: abc079_d ( https://atcoder.jp/contests/abc079/tasks/abc079_d )
# Title: D. Wall
# Language: Ruby (2.3.3)
# Submitted: 2018-09-25 09:50:40 +0000 UTC ( https://atcoder.jp/contests/abc079/submissions/3269619 ) 

h, w = gets.chomp.split(" ").map(&:to_i)

c = Array.new()
10.times do
  c << gets.chomp.split(" ").map(&:to_i)
end

a = Array.new()
h.times do
  a << gets.chomp.split(" ").map(&:to_i)
end

# dijkstra
INF = 10**6
n = 10
s = 1
d = Array.new(n, INF)
used = Array.new(n, false)
d[s] = 0

while true
  v = -1
  n.times do |u|
    if !used[u] && (v == -1 || d[u] < d[v])
      v = u
    end
  end
  break if v == -1
  used[v] = true
  n.times do |u|
    if d[u] > d[v] + c[u][v]
      d[u] = d[v] + c[u][v]
    end
  end
end

ans = 0
a.each do |row|
  row.each do |cell|
    if cell < 0
      next
    else
      ans += d[cell]
    end
  end
end

puts ans