# Contest ID: abc017
# Problem ID: abc017_1 ( https://atcoder.jp/contests/abc017/tasks/abc017_1 )
# Title: A. プロコン
# Language: Ruby (1.9.3)
# Submitted: 2015-01-17 13:31:23 +0000 UTC ( https://atcoder.jp/contests/abc017/submissions/319721 ) 

res = 0
while line = gets
  e, s = line.chomp.split(" ").map(&:to_i)
  res += e * s
end
puts res / 10
