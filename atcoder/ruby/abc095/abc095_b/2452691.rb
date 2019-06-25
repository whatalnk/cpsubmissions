# Contest ID: abc095
# Problem ID: abc095_b ( https://atcoder.jp/contests/abc095/tasks/abc095_b )
# Title: B. Bitter Alchemy
# Language: Ruby (2.3.3)
# Submitted: 2018-05-04 02:55:42 +0000 UTC ( https://atcoder.jp/contests/abc095/submissions/2452691 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
m = []
m_sum = 0
n.times do
  mi = gets.chomp.to_i
  m << mi
  m_sum += mi
end
puts n + (x - m_sum) / m.min
