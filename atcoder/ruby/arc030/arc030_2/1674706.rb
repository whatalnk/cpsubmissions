# Contest ID: arc030
# Problem ID: arc030_2 ( https://atcoder.jp/contests/arc030/tasks/arc030_2 )
# Title: B. ツリーグラフ
# Language: Ruby (2.3.3)
# Submitted: 2017-10-10 10:59:42 +0000 UTC ( https://atcoder.jp/contests/arc030/submissions/1674706 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
node = Struct.new("Node", :to)
@h = [0] + gets.chomp.split(" ").map(&:to_i)
@g = Array.new(n+1){node.new([])}
(n-1).times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  @g[a].to << b
  @g[b].to << a
end

def jewel(v, root, from)
  cost = 0
  @g[v].to.each do |i|
    next if i == from
    cost += jewel(i, root, v)
  end
  return cost if v == root
  return cost + @h[v] if cost == 0
  return cost + 1
end

puts jewel(x, x, -1) * 2