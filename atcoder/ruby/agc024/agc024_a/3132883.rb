# Contest ID: agc024
# Problem ID: agc024_a ( https://atcoder.jp/contests/agc024/tasks/agc024_a )
# Title: A. Fairness
# Language: Ruby (2.3.3)
# Submitted: 2018-09-04 02:21:01 +0000 UTC ( https://atcoder.jp/contests/agc024/submissions/3132883 ) 

a, b, c, k = gets.chomp.split(" ").map(&:to_i)

if k.even?
  ans = a - b
else
  ans = -a + b
end

if ans.abs > 10**18
  puts "Unfair"
else
  puts ans
end
