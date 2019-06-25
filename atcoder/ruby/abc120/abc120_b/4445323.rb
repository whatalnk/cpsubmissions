# Contest ID: abc120
# Problem ID: abc120_b ( https://atcoder.jp/contests/abc120/tasks/abc120_b )
# Title: B. K-th Common Divisor
# Language: Ruby (2.3.3)
# Submitted: 2019-03-03 12:06:10 +0000 UTC ( https://atcoder.jp/contests/abc120/submissions/4445323 ) 

a, b, k = gets.chomp.split(" ").map(&:to_i)

ret = []

c = [a, b].min

1.upto(c) do |i|
  if a % i == 0 && b % i == 0
    ret << i
  end
end

puts ret.reverse[k - 1]
