# Contest ID: arc076
# Problem ID: arc076_b ( https://atcoder.jp/contests/arc076/tasks/arc076_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-06-26 09:36:30 +0000 UTC ( https://atcoder.jp/contests/arc076/submissions/1382934 ) 

class UnionFind
  def initialize(n)
    @par = (0..n).to_a
    @rank = Array.new(n, 0)
  end
  
  def find(x)
    if @par[x] == x then
      return x
    else
      @par[x] = self.find(@par[x])
      return @par[x]
    end
  end
  
  def unite(x, y)
    x = self.find(x)
    y = self.find(y)
    if x == y then
      return
    end
    if @rank[x] < @rank[y] then
      @par[x] = y
    else
      @par[y] = x
      if @rank[x] == @rank[y] then
        @rank[x] += 1
      end
    end
  end

  def same(x, y)
    return self.find(x) == self.find(y)
  end 
end

class Node
  attr_accessor :x, :y, :i
  def initialize(x, y, i)
    @x = x
    @y = y
    @i = i
  end
end

class Edge
  attr_accessor :u, :v, :cost
  def initialize(u, v, cost)
    @u = u
    @v = v
    @cost = cost
  end
end

def kruscal(edge, n)
  edge.sort_by!{|x| x.cost}
  uf = UnionFind.new(n)
  res = 0
  edge.size.times do |i| 
    e = edge[i]
    if !uf.same(e.u, e.v) then
      uf.unite(e.u, e.v)
      res += e.cost
    end
  end
  return res
end

n = gets.chomp.to_i
edge = []
nodes = []

n.times do |i|
  x, y = gets.chomp.split(" ").map(&:to_i)
  nodes << Node.new(x, y, i)
end

nx = nodes.sort_by{|x| x.x}

(n-1).times do |i|
  n1 = nx[i]
  n2 = nx[i+1]
  edge << Edge.new(n1.i, n2.i, (n1.x - n2.x).abs)
end

ny = nodes.sort_by{|x| x.y}
(n-1).times do |i|
  n1 = ny[i]
  n2 = ny[i+1]
  edge << Edge.new(n1.i, n2.i, (n1.y - n2.y).abs)
end

puts kruscal(edge, n)