# Contest ID: abc018
# Problem ID: abc018_2 ( https://atcoder.jp/contests/abc018/tasks/abc018_2 )
# Title: B. 文字列の反転
# Language: Ruby (1.9.3)
# Submitted: 2015-08-28 10:57:59 +0000 UTC ( https://atcoder.jp/contests/abc018/submissions/478571 ) 

s = gets.chomp
n = gets.chomp.to_i
n.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  p = s[l-1..r-1]
  s[l-1..r-1] = p.reverse
end
puts s