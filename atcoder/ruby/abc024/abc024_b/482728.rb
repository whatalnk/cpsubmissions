# Contest ID: abc024
# Problem ID: abc024_b ( https://atcoder.jp/contests/abc024/tasks/abc024_b )
# Title: B. 自動ドア
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-30 14:49:52 +0000 UTC ( https://atcoder.jp/contests/abc024/submissions/482728 ) 

n, t = gets.chomp.split(" ").map(&:to_i)
d = 0
a = gets.chomp.to_i
tmp = a + t
(n-1).times do |i|
  a = gets.chomp.to_i
  if tmp > a then
    d += tmp - a
  end
  tmp = a + t
end
puts n*t - d
