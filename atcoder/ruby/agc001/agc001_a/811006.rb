# Contest ID: agc001
# Problem ID: agc001_a ( https://atcoder.jp/contests/agc001/tasks/agc001_a )
# Title: A. BBQ Easy
# Language: Ruby (2.3.3)
# Submitted: 2016-07-17 08:20:03 +0000 UTC ( https://atcoder.jp/contests/agc001/submissions/811006 ) 

n = gets.chomp.to_i

l = gets.chomp.split(" ").map(&:to_i)
ret = 0
l.sort.each_slice(2) do |a, b|
  ret += a
end
puts ret
