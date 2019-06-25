# Contest ID: abc017
# Problem ID: abc017_3 ( https://atcoder.jp/contests/abc017/tasks/abc017_3 )
# Title: C. ハイスコア
# Language: Ruby (2.3.3)
# Submitted: 2017-04-17 01:04:24 +0000 UTC ( https://atcoder.jp/contests/abc017/submissions/1226408 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

a = Array.new(m+2, 0)
sum = 0

n.times do
  l, r, s = gets.chomp.split(" ").map(&:to_i)
  a[l] += s
  a[r+1] -= s
  sum += s
end

(1..m).each do |i|
  a[i+1] += a[i]
end

puts sum - a[1..m].min