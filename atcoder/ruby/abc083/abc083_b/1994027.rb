# Contest ID: abc083
# Problem ID: abc083_b ( https://atcoder.jp/contests/abc083/tasks/abc083_b )
# Title: B. Some Sums
# Language: Ruby (2.3.3)
# Submitted: 2018-01-20 05:09:41 +0000 UTC ( https://atcoder.jp/contests/abc083/submissions/1994027 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
ans = 0
1.upto(n) do |i|
  x = i
  s = 0
  while true
    break if x == 0
    s += x % 10
    x /= 10
  end
  if a <= s && s <= b then
    ans += i
  end
end
puts ans