# Contest ID: abc003
# Problem ID: abc003_1 ( https://atcoder.jp/contests/abc003/tasks/abc003_1 )
# Title: A. AtCoder社の給料
# Language: Ruby (1.9.3)
# Submitted: 2014-09-19 08:36:51 +0000 UTC ( https://atcoder.jp/contests/abc003/submissions/234217 ) 

n = gets.chomp.to_i
sum = 0
(1..n).each do |i|
  sum += i
end
print sum*10000/n, "\n"