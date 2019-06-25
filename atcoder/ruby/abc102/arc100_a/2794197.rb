# Contest ID: abc102
# Problem ID: arc100_a ( https://atcoder.jp/contests/abc102/tasks/arc100_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-07-05 13:27:26 +0000 UTC ( https://atcoder.jp/contests/abc102/submissions/2794197 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

b = (1..n).map{|i| a[i-1] - i}.sort

x = b[n/2]

puts b.map{|e| (e - x).abs}.inject(:+)