# Contest ID: abc122
# Problem ID: abc122_b ( https://atcoder.jp/contests/abc122/tasks/abc122_b )
# Title: B. ATCoder
# Language: Ruby (2.3.3)
# Submitted: 2019-04-15 09:49:06 +0000 UTC ( https://atcoder.jp/contests/abc122/submissions/4987960 ) 

s = gets.chomp
n = s.length
base = ["A", "G", "C", "T"]
ans = 0
cur = 0
n.times do |i|
  if base.include?(s[i])
    cur += 1
  else
    ans = [ans, cur].max
    cur = 0
  end
end
ans = [ans, cur].max
puts ans