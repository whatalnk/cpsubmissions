# Contest ID: code-festival-2017-qualb
# Problem ID: code_festival_2017_qualb_c ( https://atcoder.jp/contests/code-festival-2017-qualb/tasks/code_festival_2017_qualb_c )
# Title: C. 3 Steps
# Language: Ruby (2.3.3)
# Submitted: 2017-10-09 16:15:05 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-qualb/submissions/1673234 ) 

ENV[Z='RUBY_THREAD_VM_STACK_SIZE']||exec({Z=>'10000000'},'ruby',$0)
n, m = gets.chomp.split(" ").map(&:to_i)
node = Struct.new("Node", :to)
@g = Array.new(n+1){node.new([])}
@color = Array.new(n+1, 0)
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  @g[a].to << b
  @g[b].to << a
end
# 二部グラフ判定
def dfs(v, c)
  @color[v] = c
  @g[v].to.size.times do |i|
    if @color[@g[v].to[i]] == c
      return false
    end
    if @color[@g[v].to[i]] == 0 && !dfs(@g[v].to[i], -c)
      return false
    end
  end
  return true
end
 
1.upto(n) do |i|
  if @color[i] == 0
    if !dfs(i, 1)
      puts n * (n-1) / 2 - m
      exit
    end
  end
end
b = @color.count(1)
w = n - b
puts b * w - m