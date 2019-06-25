# Contest ID: abc081
# Problem ID: arc086_a ( https://atcoder.jp/contests/abc081/tasks/arc086_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-12-13 16:58:15 +0000 UTC ( https://atcoder.jp/contests/abc081/submissions/1869743 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
a.each do |x|
  h[x] += 1
end
nk = h.size
v = h.values.sort
if k - nk < 0
  puts v.shift(nk - k).inject(:+)
else
  puts 0
end