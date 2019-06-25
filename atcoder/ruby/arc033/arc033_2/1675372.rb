# Contest ID: arc033
# Problem ID: arc033_2 ( https://atcoder.jp/contests/arc033/tasks/arc033_2 )
# Title: B. メタ構文変数
# Language: Ruby (2.3.3)
# Submitted: 2017-10-10 16:15:26 +0000 UTC ( https://atcoder.jp/contests/arc033/submissions/1675372 ) 

require 'set'
na, nb = gets.chomp.split(" ").map(&:to_i)
a = Set.new(gets.chomp.split(" ").map(&:to_i))
b = Set.new(gets.chomp.split(" ").map(&:to_i))

puts (a & b).size.to_f / (a | b).size