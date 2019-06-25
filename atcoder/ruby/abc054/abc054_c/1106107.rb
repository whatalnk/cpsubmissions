# Contest ID: abc054
# Problem ID: abc054_c ( https://atcoder.jp/contests/abc054/tasks/abc054_c )
# Title: C. One-stroke Path
# Language: Ruby (2.3.3)
# Submitted: 2017-02-11 13:22:33 +0000 UTC ( https://atcoder.jp/contests/abc054/submissions/1106107 ) 

N, M = gets.chomp.split(" ").map(&:to_i)

@g = Array.new(N+1){Array.new()}

M.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  @g[a] << b
  @g[b] << a
end

@ret = 0

def walk(node, visited)
  tmp = visited + [node]
  # p node, tmp
  @ret += 1 if tmp.size == N
  @g[node].each do |nd|
    if !tmp.include?(nd) then
      walk(nd, visited + [node])
    end
  end
end
walk(1, [])
puts @ret