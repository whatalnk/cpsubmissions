# Contest ID: abc034
# Problem ID: abc034_b ( https://atcoder.jp/contests/abc034/tasks/abc034_b )
# Title: B. ペア
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-12 12:05:30 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/657713 ) 

n = gets.chomp.to_i
if n.even? then
  puts n - 1
else
  puts n + 1
end