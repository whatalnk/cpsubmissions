# Contest ID: abc118
# Problem ID: abc118_b ( https://atcoder.jp/contests/abc118/tasks/abc118_b )
# Title: B. Foods Loved by Everyone
# Language: Ruby (2.3.3)
# Submitted: 2019-03-11 09:06:43 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/4550181 ) 

N, M = gets.chomp.split(" ").map(&:to_i)

foods = Array.new(M+1, 0)
N.times do
  k, *a = gets.chomp.split(" ").map(&:to_i)
  a.each do |x|
    foods[x] += 1
  end
end
ans = 0
foods.each do |x|
  if x == N
    ans += 1
  end
end

puts ans
