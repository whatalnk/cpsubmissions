# Contest ID: agc012
# Problem ID: agc012_a ( https://atcoder.jp/contests/agc012/tasks/agc012_a )
# Title: A. AtCoder Group Contest
# Language: Ruby (2.3.3)
# Submitted: 2017-04-01 12:16:53 +0000 UTC ( https://atcoder.jp/contests/agc012/submissions/1194923 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort
ret = 0
(3 * n - 2).step(n, -2) do |i|
  ret += a[i]
end
puts ret
