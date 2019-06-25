# Contest ID: abc049
# Problem ID: arc065_b ( https://atcoder.jp/contests/abc049/tasks/arc065_b )
# Title: D. 連結 / Connectivity
# Language: Ruby (2.3.3)
# Submitted: 2018-09-17 15:42:35 +0000 UTC ( https://atcoder.jp/contests/abc049/submissions/3217856 ) 

# ABC049 D
n, k, l = gets.chomp.split(" ").map(&:to_i)
roads = Array.new(n+1){Array.new()}
rails = Array.new(n+1){Array.new()}

k.times do
  p_, q_ = gets.chomp.split(" ").map(&:to_i)
  roads[p_] << q_
  roads[q_] << p_
end

l.times do 
  a, b = gets.chomp.split(" ").map(&:to_i)
  rails[a] << b
  rails[b] << a
end


def dfs(i, a, v)
  if @visited[i]
    return
  else
    @visited[i] = true
    @ret[i] = v
    j = 0
    while j < a[i].length
      if !@visited[a[i][j]]
        dfs(a[i][j], a, v)
      end
      j += 1
    end
  end
end


@visited = Array.new(n+1, false)
@ret = Array.new(n+1, 0)
v = 1
1.upto(n) do |i|
  dfs(i, roads, v)
  v += 1
end
a1 = @ret.clone

@visited = Array.new(n+1, false)
@ret = Array.new(n+1, 0)
v = 1
1.upto(n) do |i|
  dfs(i, rails, v)
  v += 1
end
a2 = @ret.clone

h = Hash.new(0)
1.upto(n) do |i|
  k = [a1[i], a2[i]]
  h[k] += 1
end

ans = []
1.upto(n) do |i|
  k = [a1[i], a2[i]]
  ans << h[k]
end

puts ans.join(" ")
