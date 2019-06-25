# Contest ID: arc032
# Problem ID: arc032_2 ( https://atcoder.jp/contests/arc032/tasks/arc032_2 )
# Title: B. 道路工事
# Language: Ruby (2.3.3)
# Submitted: 2017-10-11 02:21:15 +0000 UTC ( https://atcoder.jp/contests/arc032/submissions/1675676 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

node = Struct.new("Node", :to)
field = Array.new(n+1){node.new([])}
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  field[a].to << b
  field[b].to << a
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
  field[i].to.each do |j|
    unite(i, j)
  end
end

ans = 0
(1..n).each do |i|
  if @par[i] == i
    ans += 1
  end
end

puts ans - 1