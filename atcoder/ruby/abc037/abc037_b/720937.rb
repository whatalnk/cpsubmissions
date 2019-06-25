# Contest ID: abc037
# Problem ID: abc037_b ( https://atcoder.jp/contests/abc037/tasks/abc037_b )
# Title: B. 編集
# Language: Ruby (2.3.3)
# Submitted: 2016-05-07 13:06:10 +0000 UTC ( https://atcoder.jp/contests/abc037/submissions/720937 ) 

n, q = gets.chomp.split(" ").map(&:to_i)
a = Array.new(n, 0)
while line = gets
  l, r, t = line.chomp.split(" ").map(&:to_i)
  l -= 1
  r -= 1
  a[l..r] = [t] * (r - l + 1)
end
puts a