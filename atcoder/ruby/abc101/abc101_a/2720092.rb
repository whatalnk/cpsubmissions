# Contest ID: abc101
# Problem ID: abc101_a ( https://atcoder.jp/contests/abc101/tasks/abc101_a )
# Title: A. Eating Symbols Easy
# Language: Ruby (2.3.3)
# Submitted: 2018-06-23 12:08:47 +0000 UTC ( https://atcoder.jp/contests/abc101/submissions/2720092 ) 

s = gets.chomp
ans = 0
s.length.times do |i|
  if s[i] == "+"
    ans += 1
  else
    ans -= 1
  end
end
puts ans