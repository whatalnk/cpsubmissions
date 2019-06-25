# Contest ID: abc090
# Problem ID: arc091_b ( https://atcoder.jp/contests/abc090/tasks/arc091_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-03-12 06:06:10 +0000 UTC ( https://atcoder.jp/contests/abc090/submissions/2195240 ) 

n, k = gets.chomp.split(" ").map(&:to_i)

ans = 0
(1..n).each do |b|
  x = n / b
  r = n % b
  ans += x * [0, b - k].max
  ans += [0, r - k + 1].max
end
ans -= n if k == 0
puts ans