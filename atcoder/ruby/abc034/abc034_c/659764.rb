# Contest ID: abc034
# Problem ID: abc034_c ( https://atcoder.jp/contests/abc034/tasks/abc034_c )
# Title: C. 経路
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-13 02:56:28 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/659764 ) 

w, h = gets.chomp.split.map(&:to_i)
w-=1
h-=1

MOD = 1_000_000_007

def fact(n)
  ans = 1
  2.upto(n).each do |i|
    ans *= i
    ans = ans % MOD
  end
  return ans
end

def calc(a, b, p)
  if b == 0 then
    return 1
  elsif b.even? then
    d = calc(a, b/2, p)
    return (d * d) % p
  else
    return (a * calc(a, b - 1, p)) % p
  end
end

def comb(n, k)
  mul = fact(n+k)
  div = (fact(n) * fact(k)) % MOD
  inverse = calc(div, MOD - 2, MOD)
  return (mul * inverse) % MOD
end

puts comb(w, h)
