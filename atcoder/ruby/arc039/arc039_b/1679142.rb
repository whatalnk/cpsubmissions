# Contest ID: arc039
# Problem ID: arc039_b ( https://atcoder.jp/contests/arc039/tasks/arc039_b )
# Title: B. 高橋幼稚園
# Language: Ruby (2.3.3)
# Submitted: 2017-10-13 03:50:46 +0000 UTC ( https://atcoder.jp/contests/arc039/submissions/1679142 ) 

N, K = gets.chomp.split(" ").map(&:to_i)

R = 10**9 + 7

MAX_K = 500
@fact = Array.new(MAX_K+1)
@fact[0] = 1
MAX_K.times do |i|
  @fact[i+1] = (i + 1) * @fact[i]
end

def combn(n, k)
  return @fact[n] / @fact[n - k] / @fact[k]
end

if N > K
  puts combn(N + K - 1, K) % R
else
  x = K % N
  puts combn(N, x) % R
end
