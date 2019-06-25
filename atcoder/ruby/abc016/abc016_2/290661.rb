# Contest ID: abc016
# Problem ID: abc016_2 ( https://atcoder.jp/contests/abc016/tasks/abc016_2 )
# Title: B. A±B Problem
# Language: Ruby (1.9.3)
# Submitted: 2014-12-06 12:13:24 +0000 UTC ( https://atcoder.jp/contests/abc016/submissions/290661 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
res1 = a + b
res2 = a - b
if res1 == res2 then
  if res1 == c then
    puts '?'
  else
    puts '!'
  end
elsif res1 == c then
  puts '+'
elsif res2 == c then
  puts '-'
else
  puts '!'
end
