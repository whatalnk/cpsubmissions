# Contest ID: abc016
# Problem ID: abc016_1 ( https://atcoder.jp/contests/abc016/tasks/abc016_1 )
# Title: A. 12月6日
# Language: Ruby (1.9.3)
# Submitted: 2014-12-06 12:08:41 +0000 UTC ( https://atcoder.jp/contests/abc016/submissions/290394 ) 

m, d = gets.chomp.split(" ").map(&:to_i)
if m % d == 0 then
  puts 'YES'
else
  puts 'NO'
end
