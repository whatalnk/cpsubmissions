# Contest ID: agc007
# Problem ID: agc007_b ( https://atcoder.jp/contests/agc007/tasks/agc007_b )
# Title: B. Construct Sequences
# Language: Ruby (2.3.3)
# Submitted: 2016-11-12 16:24:18 +0000 UTC ( https://atcoder.jp/contests/agc007/submissions/981434 ) 

n = gets.chomp.to_i
p_ = gets.chomp.split(" ").map(&:to_i)
a_ = (1..n).map{|x| x * n}
b_ = a_.reverse
d = 1
p_.each do |i|
  a_[i-1] += d
  d += 1
end
puts a_.join(" ")
puts b_.join(" ")
