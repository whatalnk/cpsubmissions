# Contest ID: arc035
# Problem ID: arc035_b ( https://atcoder.jp/contests/arc035/tasks/arc035_b )
# Title: B. アットコーダー王国のコンテスト事情
# Language: Ruby (2.3.3)
# Submitted: 2017-10-12 02:09:12 +0000 UTC ( https://atcoder.jp/contests/arc035/submissions/1677395 ) 

R = 10**9 + 7
n = gets.chomp.to_i
arr = []
h = Hash.new(0)
n.times do
  a = gets.chomp.to_i
  arr << a
  h[a] += 1
end
arr.sort!
ans = 0
i = n
arr.each do |a|
  ans += (i * a)
  i -= 1
end
puts ans

ans = 1
h.each do |key, value|
  (1..value).each do |i|
    ans *= i
    ans %= R
  end
end
puts ans