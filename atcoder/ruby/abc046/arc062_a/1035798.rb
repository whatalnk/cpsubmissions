# Contest ID: abc046
# Problem ID: arc062_a ( https://atcoder.jp/contests/abc046/tasks/arc062_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2016-12-22 06:56:37 +0000 UTC ( https://atcoder.jp/contests/abc046/submissions/1035798 ) 

n = gets.chomp.to_i
t0 = 1
a0 = 1
n.times do
  t1, a1 = gets.chomp.split(" ").map(&:to_i)
  dd = [(t0.to_r / t1).ceil, (a0.to_r / a1).ceil].max
  t0 = t1 * dd
  a0 = a1 * dd
end
puts t0 + a0