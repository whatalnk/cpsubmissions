# Contest ID: abc014
# Problem ID: abc014_3 ( https://atcoder.jp/contests/abc014/tasks/abc014_3 )
# Title: C. AtColor
# Language: Ruby (1.9.3)
# Submitted: 2015-08-31 05:43:25 +0000 UTC ( https://atcoder.jp/contests/abc014/submissions/482925 ) 

n = gets.chomp.to_i
r = Array.new(10**6+2, 0)
n.times do |i|
  a, b = gets.chomp.split(" ").map(&:to_i)
  r[a] += 1
  r[b+1] -= 1
end
(1..10**6+1).each {|i| r[i] += r[i-1]}
puts r.max