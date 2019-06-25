# Contest ID: abc047
# Problem ID: arc063_b ( https://atcoder.jp/contests/abc047/tasks/arc063_b )
# Title: D. 高橋君と見えざる手 / An Invisible Hand
# Language: Ruby (2.3.3)
# Submitted: 2018-09-17 14:45:47 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/3217583 ) 

# ABC047 D
n, t = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
amin = a[0]
bmax = a[1] - a[0]
(n - 1).times do |i|
  amin = [amin, a[i]].min
  b = a[i+1] - amin
  bmax = [b, bmax].max
  h[b] += 1 if b > 0
end
puts h[bmax]