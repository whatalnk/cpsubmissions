# Contest ID: arc078
# Problem ID: arc078_b ( https://atcoder.jp/contests/arc078/tasks/arc078_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-07-16 01:09:00 +0000 UTC ( https://atcoder.jp/contests/arc078/submissions/1432361 ) 

@n = gets.chomp.to_i

@nodes = Array.new(@n+1){Array.new()}

(@n - 1).times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  @nodes[a] << b
  @nodes[b] << a
end

def dfs(start)
  que = [start]
  visited = Array.new(@n+1, false)
  dist = Array.new(@n+1, 0)
  while !que.empty?
    node = que.shift
    visited[node] = true
    @nodes[node].each do |i|
      if visited[i] then
        next
      else
        que << i
        dist[i] = dist[node] + 1
      end
    end
  end
  return dist
end

dist1 = dfs(1)
dist2 = dfs(@n)

# p dist1
# p dist2

fennec = 0
snuke = 0
(1..@n).each do |i|
  if dist1[i] <= dist2[i] then
    fennec += 1
  else
    snuke += 1
  end
end

if fennec > snuke then
  puts "Fennec"
else
  puts "Snuke"
end
