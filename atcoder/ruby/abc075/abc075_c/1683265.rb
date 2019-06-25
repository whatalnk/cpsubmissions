# Contest ID: abc075
# Problem ID: abc075_c ( https://atcoder.jp/contests/abc075/tasks/abc075_c )
# Title: C. Bridge
# Language: Ruby (2.3.3)
# Submitted: 2017-10-14 12:26:19 +0000 UTC ( https://atcoder.jp/contests/abc075/submissions/1683265 ) 

N, M = gets.chomp.split(" ").map(&:to_i)
node = Struct.new("Node", :to)

edges = []
M.times do
  edges << gets.chomp.split(" ").map(&:to_i)
end

# Union Find

def find(x)
  if @par[x] == x
    return x
  else
    @par[x] = find(@par[x])
    return @par[x]
  end
end

def unite(x, y)
  x = find(x)
  y = find(y)
  if x == y
    return
  end
  if @rank[x] < @rank[y]
    @par[x] = y
  else
    @par[y] = x
    if @rank[x] == @rank[y]
      @rank[x] += 1
    end
  end
end

def same(x, y)
  return find(x) == find(y)
end

ans = 0
M.times do |i|
  @g = Array.new(N+1){node.new([])}
  @par = (0..N).to_a
  @rank = Array.new(N+1, 0)
  M.times do |j|
    next if i == j
    a, b = edges[j]
    @g[a].to << b
    @g[b].to << a    
  end
  (1..N).each do |n1|
    @g[n1].to.each do |n2|
      unite(n1, n2)
    end
  end
  nroot = 0
  (1..N).each do |root|
    if root == @par[root]
      nroot += 1
    end
  end
  if nroot != 1
    ans += 1
  end
end

puts ans
