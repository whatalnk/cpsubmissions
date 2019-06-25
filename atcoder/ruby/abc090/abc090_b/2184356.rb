# Contest ID: abc090
# Problem ID: abc090_b ( https://atcoder.jp/contests/abc090/tasks/abc090_b )
# Title: B. Palindromic Numbers
# Language: Ruby (2.3.3)
# Submitted: 2018-03-11 12:06:58 +0000 UTC ( https://atcoder.jp/contests/abc090/submissions/2184356 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0
(a..b).each do |i|
  x = i.to_s
  ans += 1 if x == x.reverse
end
puts ans