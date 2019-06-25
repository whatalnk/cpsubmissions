# Contest ID: abc113
# Problem ID: abc113_b ( https://atcoder.jp/contests/abc113/tasks/abc113_b )
# Title: B. Palace
# Language: Ruby (2.3.3)
# Submitted: 2019-01-07 09:02:42 +0000 UTC ( https://atcoder.jp/contests/abc113/submissions/3955110 ) 

n = gets.chomp.to_i
t, a  = gets.chomp.split(" ").map(&:to_f)
h = gets.chomp.split(" ").map(&:to_f)

d = 1000
ans = 0
n.times do |i|
  x = h[i]
  t_ = t - x * 0.006
  d_ = (a - t_).abs
  if d_ < d
    d = d_
    ans = i
  end
end
puts ans + 1