# Contest ID: tenka1-2017-beginner
# Problem ID: tenka1_2017_b ( https://atcoder.jp/contests/tenka1-2017-beginner/tasks/tenka1_2017_b )
# Title: B. Different Distribution
# Language: Ruby (2.3.3)
# Submitted: 2017-09-30 12:07:44 +0000 UTC ( https://atcoder.jp/contests/tenka1-2017-beginner/submissions/1637141 ) 

n = gets.chomp.to_i
arr = []
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  arr << [a, b]
end
arr.sort_by!{|x| x[0]}
puts arr.last[0] + arr.last[1]
