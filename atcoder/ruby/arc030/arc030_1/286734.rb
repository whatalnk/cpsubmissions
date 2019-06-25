# Contest ID: arc030
# Problem ID: arc030_1 ( https://atcoder.jp/contests/arc030/tasks/arc030_1 )
# Title: A. 閉路グラフ
# Language: Ruby (1.9.3)
# Submitted: 2014-11-29 12:14:23 +0000 UTC ( https://atcoder.jp/contests/arc030/submissions/286734 ) 

n = gets.chomp.to_i
k = gets.chomp.to_i

if n.even? then
  res = n / 2
else
  res = (n - 1) / 2
end

if k <= res then
  puts "YES"
else
  puts "NO"
end
