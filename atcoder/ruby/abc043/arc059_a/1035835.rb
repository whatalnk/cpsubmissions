# Contest ID: abc043
# Problem ID: arc059_a ( https://atcoder.jp/contests/abc043/tasks/arc059_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2016-12-22 08:45:19 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/1035835 ) 

n = gets.chomp.to_f
aa = gets.chomp.split(" ").map(&:to_i)
aa_sum = aa.inject(:+)
m = aa_sum / n
m1 = m.floor
m2 = m.ceil
aa2_sum = aa.map{|x| x**2}.inject(:+)
r1 = aa2_sum - 2 * m1 * aa_sum + n * (m1 ** 2)
r2 = aa2_sum - 2 * m2 * aa_sum + n * (m2 ** 2)
puts [r1, r2].min.to_i