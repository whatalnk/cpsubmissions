# Contest ID: arc009
# Problem ID: arc009_1 ( https://atcoder.jp/contests/arc009/tasks/arc009_1 )
# Title: A. 元気にお使い！高橋君
# Language: Ruby (1.9.3)
# Submitted: 2015-08-09 12:23:46 +0000 UTC ( https://atcoder.jp/contests/arc009/submissions/467950 ) 

n = gets.chomp.to_i
res = 0
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  res += a*b
end
res = (res * 1.05).to_i
puts res
