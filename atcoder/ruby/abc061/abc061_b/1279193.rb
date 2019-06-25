# Contest ID: abc061
# Problem ID: abc061_b ( https://atcoder.jp/contests/abc061/tasks/abc061_b )
# Title: B. Counting Roads
# Language: Ruby (2.3.3)
# Submitted: 2017-05-13 12:06:58 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1279193 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
h = Array.new(n+1, 0)
m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  h[a] +=1
  h[b] +=1
end
(1..(n)).each do |i|
  puts h[i]
end