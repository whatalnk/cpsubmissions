# Contest ID: abc037
# Problem ID: abc037_c ( https://atcoder.jp/contests/abc037/tasks/abc037_c )
# Title: C. 総和
# Language: Ruby (2.3.3)
# Submitted: 2016-05-15 14:33:16 +0000 UTC ( https://atcoder.jp/contests/abc037/submissions/731391 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
a = [0] + a
(1..n).each do |i|
  a[i] += a[i-1]
end
ans = 0
(0..(n - k)).each do |i|
  ans += (a[i+k] - a[i])
end
puts ans
