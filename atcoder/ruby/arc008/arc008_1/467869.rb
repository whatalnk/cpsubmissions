# Contest ID: arc008
# Problem ID: arc008_1 ( https://atcoder.jp/contests/arc008/tasks/arc008_1 )
# Title: A. たこ焼き買えるかな？
# Language: Ruby (1.9.3)
# Submitted: 2015-08-09 09:42:40 +0000 UTC ( https://atcoder.jp/contests/arc008/submissions/467869 ) 

n = gets.chomp.to_i
p1 = 15
p2 = 100
a = n % 10
b = n / 10
if a > 6 then
  puts (b+1) * p2
else
  puts b * p2 + a * p1
end
