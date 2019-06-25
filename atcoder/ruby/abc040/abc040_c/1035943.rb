# Contest ID: abc040
# Problem ID: abc040_c ( https://atcoder.jp/contests/abc040/tasks/abc040_c )
# Title: C. 柱柱柱柱柱
# Language: Ruby (2.3.3)
# Submitted: 2016-12-22 10:30:54 +0000 UTC ( https://atcoder.jp/contests/abc040/submissions/1035943 ) 

n = gets.chomp.to_i
aa = gets.chomp.split(" ").map(&:to_i)
dp = Array.new(n)
dp[0] = 0
dp[1] = dp[0] + (aa[0] - aa[1]).abs
(2..(n - 1)).each do |i|
  c1 = dp[i - 1] + (aa[i - 1] - aa[i]).abs
  c2 = dp[i - 2] + (aa[i - 2] - aa[i]).abs
  dp[i] = [c1, c2].min
end
puts dp[n - 1]
