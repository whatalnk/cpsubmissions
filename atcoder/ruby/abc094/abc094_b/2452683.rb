# Contest ID: abc094
# Problem ID: abc094_b ( https://atcoder.jp/contests/abc094/tasks/abc094_b )
# Title: B. Toll Gates
# Language: Ruby (2.3.3)
# Submitted: 2018-05-04 02:52:08 +0000 UTC ( https://atcoder.jp/contests/abc094/submissions/2452683 ) 

n, m, x = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = Array.new(n + 1, 0)
a.each do |i|
  b[i] = 1
end
left = b[0..x].inject(:+)
right = b[x..(n-1)].inject(:+)
puts [left, right].min