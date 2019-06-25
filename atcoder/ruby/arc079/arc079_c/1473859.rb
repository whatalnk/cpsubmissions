# Contest ID: arc079
# Problem ID: arc079_c ( https://atcoder.jp/contests/arc079/tasks/arc079_c )
# Title: E. Decrease (Judge ver.)
# Language: Ruby (2.3.3)
# Submitted: 2017-07-31 02:31:49 +0000 UTC ( https://atcoder.jp/contests/arc079/submissions/1473859 ) 

n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

ret = 0

while arr.max >= n
  s = arr.map{|x| x / n}.inject(:+)
  arr.map!{|x| x + s - (n+1)*(x / n)}
  ret += s
end

puts ret