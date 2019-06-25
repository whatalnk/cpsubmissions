# Contest ID: abc103
# Problem ID: abc103_a ( https://atcoder.jp/contests/abc103/tasks/abc103_a )
# Title: A. Task Scheduling Problem
# Language: Ruby (2.3.3)
# Submitted: 2018-08-08 10:35:39 +0000 UTC ( https://atcoder.jp/contests/abc103/submissions/2971899 ) 

a = gets.chomp.split(" ").map(&:to_i)
ret = []
a.permutation do |x|
  ret << (x[0] - x[1]).abs + (x[1] - x[2]).abs
end
puts ret.min
