# Contest ID: abc102
# Problem ID: abc102_a ( https://atcoder.jp/contests/abc102/tasks/abc102_a )
# Title: A. Multiple of 2 and N
# Language: Ruby (2.3.3)
# Submitted: 2018-07-05 12:33:46 +0000 UTC ( https://atcoder.jp/contests/abc102/submissions/2793943 ) 

n = gets.chomp.to_i
if n.even?
  puts n
else
  puts n*2
end