# Contest ID: abc087
# Problem ID: arc090_b ( https://atcoder.jp/contests/abc087/tasks/arc090_b )
# Title: D. People on a Line
# Language: Ruby (2.3.3)
# Submitted: 2018-10-15 12:23:55 +0000 UTC ( https://atcoder.jp/contests/abc087/submissions/3414049 ) 

n, m = gets.chomp.split(" ").map(&:to_i)


@g = Array.new(n+1){Array.new()}

m.times do
  l, r, d = gets.chomp.split(" ").map(&:to_i)
  @g[l] << [r, d]
  @g[r] << [l, -d]
end

@visited = Array.new(n+1)

def dfs(g, s, v)
  if !@visited[s].nil?
    return true
  end
  stack = [s]
  @visited[s] = 0
  while !stack.empty?
    nx = stack.pop
    @g[nx].each do |node, dist|
      if @visited[node].nil?
        stack << node
        @visited[node] = @visited[nx] + dist
      elsif @visited[node] != @visited[nx] + dist
        return false
      end
    end
  end
  return true
end

flag = true
n.times do |i|
  ans = dfs(@g, i+1, @visited)
  if !ans
    flag = false
    break
  end
end

if flag
  puts "Yes"
else
  puts "No"
end