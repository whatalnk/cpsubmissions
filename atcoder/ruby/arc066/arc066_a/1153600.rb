# Contest ID: arc066
# Problem ID: arc066_a ( https://atcoder.jp/contests/arc066/tasks/arc066_a )
# Title: C. Lining Up
# Language: Ruby (2.3.3)
# Submitted: 2017-03-10 07:23:04 +0000 UTC ( https://atcoder.jp/contests/arc066/submissions/1153600 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
if n.even? then
  ref = ((1..(n-1)).step(2).to_a * 2).sort
  ans = 2**(n/2) % (10**9 + 7)
else
  ref = ((2..(n-1)).step(2).to_a * 2 + [0]).sort
  ans = 2**((n-1)/2) % (10**9 + 7)
end
if a == ref then
  puts ans
else
  puts 0
end

  
