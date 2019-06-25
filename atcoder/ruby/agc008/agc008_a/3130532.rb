# Contest ID: agc008
# Problem ID: agc008_a ( https://atcoder.jp/contests/agc008/tasks/agc008_a )
# Title: A. Simple Calculator
# Language: Ruby (2.3.3)
# Submitted: 2018-09-03 11:02:47 +0000 UTC ( https://atcoder.jp/contests/agc008/submissions/3130532 ) 

x, y = gets.chomp.split(" ").map(&:to_i)

ans = []

if y - x >= 0
  ans << y - x
end

if y - (-x) >= 0
  ans << y - (-x) + 1
end

if -y - x >= 0
  ans << -y - x + 1
end

if -y - (-x) >= 0
  ans << -y - (-x) + 2
end

puts ans.min