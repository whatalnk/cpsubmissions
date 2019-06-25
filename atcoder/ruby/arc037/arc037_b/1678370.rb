# Contest ID: arc037
# Problem ID: arc037_b ( https://atcoder.jp/contests/arc037/tasks/arc037_b )
# Title: B. バウムテスト
# Language: Ruby (2.3.3)
# Submitted: 2017-10-12 12:07:39 +0000 UTC ( https://atcoder.jp/contests/arc037/submissions/1678370 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

node = Struct.new("Node", :to)
@g = Array.new(n+1){node.new([])}
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  @g[a].to << b
  @g[b].to << a
end

# Union Find
@par = (0..n).to_a
@rank = Array.new(n+1, 0)
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

(1..n).each do |i|
  @g[i].to.each do |j|
    unite(i, j)
  end
end

def dfs(v, from)
  @visited[v] = true
  @g[v].to.each do |i|
    next if i == from
    if @visited[i]
      @visited[0] = true
      return
    else
      dfs(i, v)
    end
  end
end

ans = 0
(1..n).each do |i|
  if @par[i] == i
    @visited = Array.new(n+1, false)
    dfs(i, -1)
    ans += 1 if !@visited[0]
  end
end

puts ans