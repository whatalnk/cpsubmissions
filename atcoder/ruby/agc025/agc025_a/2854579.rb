# Contest ID: agc025
# Problem ID: agc025_a ( https://atcoder.jp/contests/agc025/tasks/agc025_a )
# Title: A. Digits Sum
# Language: Ruby (2.3.3)
# Submitted: 2018-07-16 04:45:03 +0000 UTC ( https://atcoder.jp/contests/agc025/submissions/2854579 ) 

n = gets.chomp.to_i

if n % 10 == 0 then
  puts 10
else
  puts n.to_s.split("").map(&:to_i).inject(:+)
end
