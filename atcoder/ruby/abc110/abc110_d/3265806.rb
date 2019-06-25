# Contest ID: abc110
# Problem ID: abc110_d ( https://atcoder.jp/contests/abc110/tasks/abc110_d )
# Title: D. Factorization
# Language: Ruby (2.3.3)
# Submitted: 2018-09-24 14:10:54 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/3265806 ) 

require 'prime'

MAX = 10**6
MOD = 10**9 + 7

@fac = []
@faci = []
@inv = []

@fac[0] = @fac[1] = 1
@faci[0] = @faci[1] = 1
@inv[1] = 1

2.upto(MAX) do |i|
  @fac[i] = @fac[i - 1] * i % MOD
  @inv[i] = MOD - @inv[MOD % i] * (MOD / i) % MOD
  @faci[i] = @faci[i - 1] * @inv[i] % MOD
end

def comb(n, k)
  return 0 if n < k
  return 0 if n < 0 || k < 0
  return @fac[n] * (@faci[k] * @faci[n - k] % MOD) % MOD
end

n, m = gets.chomp.split(" ").map(&:to_i)

pmd = Prime.prime_division(m)

ans = 1

pmd.each do |pm, e|
  ans *= comb(e + n - 1, e)
  ans %= MOD
end
puts ans