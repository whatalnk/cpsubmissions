# Contest ID: abc032
# Problem ID: abc032_a ( https://atcoder.jp/contests/abc032/tasks/abc032_a )
# Title: A. 高橋君と青木君の好きな数
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-09 12:09:21 +0000 UTC ( https://atcoder.jp/contests/abc032/submissions/606292 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
n = gets.chomp.to_i

a, b = [a, b].minmax

i = n / b
while true
  m = i * b
  if (m >= n) && (m % a == 0) then
    puts m
    break
  else
    i += 1
  end
end
