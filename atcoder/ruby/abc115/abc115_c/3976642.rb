# Contest ID: abc115
# Problem ID: abc115_c ( https://atcoder.jp/contests/abc115/tasks/abc115_c )
# Title: C. Christmas Eve
# Language: Ruby (2.3.3)
# Submitted: 2019-01-11 08:43:23 +0000 UTC ( https://atcoder.jp/contests/abc115/submissions/3976642 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = []
n.times do
  a << gets.chomp.to_i
end

a.sort!

ret = a[n-1] - a[0]
(0..(n-k)).each do |i|
  x = a[i+k-1] - a[i] 
  if  x < ret
    ret = x
  end
end

puts ret