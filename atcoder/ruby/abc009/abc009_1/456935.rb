# Contest ID: abc009
# Problem ID: abc009_1 ( https://atcoder.jp/contests/abc009/tasks/abc009_1 )
# Title: A. 引越し作業
# Language: Ruby (1.9.3)
# Submitted: 2015-07-29 08:10:05 +0000 UTC ( https://atcoder.jp/contests/abc009/submissions/456935 ) 

n = gets.chomp.to_i
if n % 2 == 0 then
  puts n / 2
else
  puts n / 2 + 1
end