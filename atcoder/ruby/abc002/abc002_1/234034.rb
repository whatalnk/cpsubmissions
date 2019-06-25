# Contest ID: abc002
# Problem ID: abc002_1 ( https://atcoder.jp/contests/abc002/tasks/abc002_1 )
# Title: A. 正直者
# Language: Ruby (1.9.3)
# Submitted: 2014-09-18 12:09:36 +0000 UTC ( https://atcoder.jp/contests/abc002/submissions/234034 ) 

n1, n2 = gets.chomp.split(" ").map(&:to_i)
if n1 - n2 > 0
  print n1, "\n"
else
  print n2, "\n"
end