# Contest ID: abc014
# Problem ID: abc014_1 ( https://atcoder.jp/contests/abc014/tasks/abc014_1 )
# Title: A. けんしょう先生のお菓子配り
# Language: Ruby (1.9.3)
# Submitted: 2015-07-29 03:32:18 +0000 UTC ( https://atcoder.jp/contests/abc014/submissions/456785 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
rem = a % b
if rem == 0 then 
  puts rem
else
  puts b - rem
end
