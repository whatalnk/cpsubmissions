# Contest ID: abc060
# Problem ID: arc073_a ( https://atcoder.jp/contests/abc060/tasks/arc073_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-04-29 14:24:40 +0000 UTC ( https://atcoder.jp/contests/abc060/submissions/1253946 ) 

N, T = gets.chomp.split(" ").map(&:to_i)

tt = gets.chomp.split(" ").map(&:to_i)

ret = T
(N-1).times do |i|
  ret += [tt[i+1] - tt[i], T].min
end
puts ret