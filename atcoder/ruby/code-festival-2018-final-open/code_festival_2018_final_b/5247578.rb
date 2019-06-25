# Contest ID: code-festival-2018-final-open
# Problem ID: code_festival_2018_final_b ( https://atcoder.jp/contests/code-festival-2018-final-open/tasks/code_festival_2018_final_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-03 16:44:24 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-final-open/submissions/5247578 ) 

MAX_N = 10**5
n, m = gets.chomp.split(" ").map(&:to_i)
r = gets.chomp.split(" ").map(&:to_i)
rr = (1..MAX_N).to_a.map{|x| Math.log10(x)}
cum = Array.new(MAX_N+1, 0.0)
MAX_N.times do |i|
  cum[i+1] = cum[i] + rr[i]
end
ans = cum[n]
r.each do |i|
  ans -= cum[i]
end
ans -= n * Math.log10(m)
puts (-ans).ceil