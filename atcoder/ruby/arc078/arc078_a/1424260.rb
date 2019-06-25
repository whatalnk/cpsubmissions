# Contest ID: arc078
# Problem ID: arc078_a ( https://atcoder.jp/contests/arc078/tasks/arc078_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-07-15 12:20:25 +0000 UTC ( https://atcoder.jp/contests/arc078/submissions/1424260 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

b = [a[0]]
(1..(n - 1)).each do |i|
  b << b[i-1] + a[i]
end

a_sum = b[n-1]
ans = (b.shift * 2 - a_sum).abs
b.pop
b.each do |x|
  ans = [ans, (2 * x - a_sum).abs].min
end

puts ans