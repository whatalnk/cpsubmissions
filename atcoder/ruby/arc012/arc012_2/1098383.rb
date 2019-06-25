# Contest ID: arc012
# Problem ID: arc012_2 ( https://atcoder.jp/contests/arc012/tasks/arc012_2 )
# Title: B. アキレスと亀
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 04:28:41 +0000 UTC ( https://atcoder.jp/contests/arc012/submissions/1098383 ) 

n, va, vb, l = gets.chomp.split(" ")
n = n.to_i
va = va.to_f
vb = vb.to_f
l = l.to_f
d = l
n.times do
  t = d / va
  d = vb * t
end
puts sprintf("%.12f", d)