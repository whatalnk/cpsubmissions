# Contest ID: abc042
# Problem ID: arc058_b ( https://atcoder.jp/contests/abc042/tasks/arc058_b )
# Title: D. いろはちゃんとマス目 / Iroha and a Grid
# Language: Ruby (2.3.3)
# Submitted: 2018-09-10 09:47:27 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/3173074 ) 

h, w, a, b = gets.chomp.split(" ").map(&:to_i)

MOD = 10**9 + 7

def power(x, n)
  if n == 0
    return 1
  elsif n.even?
    return power(x * x, n / 2) % MOD
  else
    return x * power(x, n /2)**2 % MOD
  end
end

@fac = []
@fac[0] = @fac[1] = 1

2.upto(h + w - 2) do |i|
  @fac[i] = @fac[i - 1] * i % MOD
end

@faci = []
@faci[0] = @faci[1] = 1
@faci[h + w - 2] = power(@fac[h + w - 2], MOD - 2) % MOD
(h + w - 3).downto(2) do |i|
  @faci[i] = @faci[i + 1] * (i + 1) % MOD
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

