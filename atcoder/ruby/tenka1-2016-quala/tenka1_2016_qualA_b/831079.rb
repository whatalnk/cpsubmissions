# Contest ID: tenka1-2016-quala
# Problem ID: tenka1_2016_qualA_b ( https://atcoder.jp/contests/tenka1-2016-quala/tasks/tenka1_2016_qualA_b )
# Title: B. PackDrop
# Language: Ruby (2.3.3)
# Submitted: 2016-08-05 07:50:17 +0000 UTC ( https://atcoder.jp/contests/tenka1-2016-quala/submissions/831079 ) 

node = Struct.new("Node", :parent, :children, :value)
n, m = gets.chomp.split(" ").map(&:to_i)
@graph = Array.new(n){node.new(-1, [], 0)}
1.upto(n-1).each do |i|
  parent = gets.chomp.to_i
  @graph[i][:parent] = parent
  @graph[parent][:children] = @graph[parent][:children].push(i)
end
m.times do
  b, c = gets.chomp.split(" ").map(&:to_i)
  @graph[b][:value] = c
end

def dfs(node)
  s = node.children.map{|e| dfs(@graph[e])}
  if node.parent == -1 then
    y = 0
  else
    y = node.children.map{|e| @graph[e].value}.min || 0
  end
  node[:value] = node[:value] + y
  return s.inject(node.value){|s, e| s + (e - y)}
end
puts dfs(@graph[0])
