# Contest ID: abc066
# Problem ID: abc066_b ( https://atcoder.jp/contests/abc066/tasks/abc066_b )
# Title: B. ss
# Language: Ruby (2.3.3)
# Submitted: 2017-07-01 12:09:20 +0000 UTC ( https://atcoder.jp/contests/abc066/submissions/1391957 ) 

s = gets.chomp
n = s.length / 2

while n > 0
  n -= 1
  left = s[0...n]
  right = s[n...(2 * n)]
  if left == right then
    puts n * 2
    exit
  end
end