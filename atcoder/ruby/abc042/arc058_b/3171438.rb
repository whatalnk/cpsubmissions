# Contest ID: abc042
# Problem ID: arc058_b ( https://atcoder.jp/contests/abc042/tasks/arc058_b )
# Title: D. いろはちゃんとマス目 / Iroha and a Grid
# Language: Ruby (2.3.3)
# Submitted: 2018-09-10 00:38:09 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/3171438 ) 

h, w, a, b = gets.chomp.split(" ").map(&:to_i)

MOD = 10**9 + 7

@fac = []
@faci = []
@inv = []

@fac[0] = @fac[1] = 1
@faci[0] = @faci[1] = 1
@inv[1] = 1

2.upto(h + w - 2) do |i|
  @fac[i] = @fac[i - 1] * i % MOD
  @inv[i] = MOD - @inv[MOD % i] * (MOD / i) % MOD
  @faci[i] = @faci[i - 1] * @inv[i] % MOD
end

def comb(n, k)
  return 0 if n < k
  return 0 if n < 0 || k < 0
  return @fac[n] * (@faci[k] * @faci[n - k] % MOD) % MOD
end

ans = 0

b.upto(w - 1) do |i|
  ans += comb(h - a - 1 + i, i) * comb(a + w - i - 2, w - i - 1)
  ans %= MOD
end
p ans % MOD

