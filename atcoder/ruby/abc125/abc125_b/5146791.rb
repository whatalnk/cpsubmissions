# Contest ID: abc125
# Problem ID: abc125_b ( https://atcoder.jp/contests/abc125/tasks/abc125_b )
# Title: B. Resale
# Language: Ruby (2.3.3)
# Submitted: 2019-04-27 12:17:19 +0000 UTC ( https://atcoder.jp/contests/abc125/submissions/5146791 ) 

n = gets.chomp.to_i
v = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

ans = 0
n.times do |i|
  xy = v[i] - c[i]
  ans += xy if xy > 0
end
puts ans