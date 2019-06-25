# Contest ID: code-thanks-festival-2018-open
# Problem ID: code_thanks_festival_2018_c ( https://atcoder.jp/contests/code-thanks-festival-2018-open/tasks/code_thanks_festival_2018_c )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 06:10:56 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2018-open/submissions/5288145 ) 

n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i).sort
xx = Array.new(n+1, 0)
n.times do |i|
  xx[i+1] = xx[i] + x[i]
end

ans = 0

n.times do |i|
  ans += xx[n] - xx[i] - (n - i) * x[i]
end

puts ans