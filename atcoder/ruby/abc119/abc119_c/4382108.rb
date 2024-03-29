# Contest ID: abc119
# Problem ID: abc119_c ( https://atcoder.jp/contests/abc119/tasks/abc119_c )
# Title: C. Synthetic Kadomatsu
# Language: Ruby (2.3.3)
# Submitted: 2019-02-25 03:57:29 +0000 UTC ( https://atcoder.jp/contests/abc119/submissions/4382108 ) 

@n, @a, @b, @c = gets.chomp.split(" ").map(&:to_i)

@l = []
@n.times do
  @l << gets.chomp.to_i
end
INF = 10**9

def dfs(cur, a, b, c)
  if cur == @n
    if [a, b, c].min > 0
      return (a - @a).abs + (b - @b).abs + (c - @c).abs - 30
    else
      return INF
    end
  end
  ret0 = dfs(cur + 1, a, b, c)
  ret1 = dfs(cur + 1, a + @l[cur], b, c) + 10
  ret2 = dfs(cur + 1, a , b + @l[cur], c) + 10
  ret3 = dfs(cur + 1, a, b, c + @l[cur]) + 10
  return [ret0, ret1, ret2, ret3].min
end

puts dfs(0, 0, 0, 0)