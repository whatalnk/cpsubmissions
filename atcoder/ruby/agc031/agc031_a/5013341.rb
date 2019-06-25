# Contest ID: agc031
# Problem ID: agc031_a ( https://atcoder.jp/contests/agc031/tasks/agc031_a )
# Title: A. Colorful Subsequence
# Language: Ruby (2.3.3)
# Submitted: 2019-04-18 03:16:54 +0000 UTC ( https://atcoder.jp/contests/agc031/submissions/5013341 ) 

n = gets.chomp.to_i
s = gets.chomp
h = Hash.new(0)
n.times do |i|
  h[s[i]] += 1
end

MOD = 10**9 + 7
ans = 1
h.each do |k, v|
  ans *= (v + 1)
  ans %= MOD
end
puts ans - 1
