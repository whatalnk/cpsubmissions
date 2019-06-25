# Contest ID: abc070
# Problem ID: abc070_d ( https://atcoder.jp/contests/abc070/tasks/abc070_d )
# Title: D. Transit Tree Path
# Language: Ruby (2.3.3)
# Submitted: 2017-09-21 09:36:46 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/1609811 ) 

n = gets.chomp.to_i
edge = Struct.new("Edge", :to, :cost)
tree = Array.new(n+1){Array.new()}
depth = Array.new(n+1)
(n - 1).times do
  a, b, c = gets.chomp.split(" ").map(&:to_i)
  a -= 1
  b -= 1
  tree[a] << edge.new(b, c)
  tree[b] << edge.new(a, c)
end
  
q, k = gets.chomp.split(" ").map(&:to_i)
k -= 1
 
depth[k] = 0
cand = [[k, 0]]
while cand.length > 0
  curr, dist = cand.shift
  tree[curr].each do |e|
    unless depth[e.to]
      depth[e.to] = dist + e.cost
      cand << [e.to, depth[e.to]]
    end
  end
end
q.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  x -= 1
  y -= 1
  puts depth[x] + depth[y]
end