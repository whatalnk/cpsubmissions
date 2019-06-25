# Contest ID: abc093
# Problem ID: arc094_a ( https://atcoder.jp/contests/abc093/tasks/arc094_a )
# Title: C. Same Integers
# Language: Ruby (2.3.3)
# Submitted: 2018-05-06 04:04:31 +0000 UTC ( https://atcoder.jp/contests/abc093/submissions/2471652 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)

ans = 0
while true
  break if a == b && b == c
  a, b, c = [a, b, c].sort
  if a == b then
    a += 1
    b += 1
  else
    a += 2
  end
  ans += 1
end
puts ans