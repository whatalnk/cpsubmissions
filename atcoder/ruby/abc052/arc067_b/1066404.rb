# Contest ID: abc052
# Problem ID: arc067_b ( https://atcoder.jp/contests/abc052/tasks/arc067_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-01-15 12:39:20 +0000 UTC ( https://atcoder.jp/contests/abc052/submissions/1066404 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
xs = gets.chomp.split(" ").map(&:to_i)
tired = 0
(n-1).times do |i|
  d = xs[i + 1] - xs[i]
  tired += [d*a, b].min
end
puts tired