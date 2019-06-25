# Contest ID: arc044
# Problem ID: arc044_b ( https://atcoder.jp/contests/arc044/tasks/arc044_b )
# Title: B. 最短路問題
# Language: Ruby (2.3.3)
# Submitted: 2017-10-19 03:52:44 +0000 UTC ( https://atcoder.jp/contests/arc044/submissions/1693068 ) 

R = 10**9+7
N = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
if a[0] != 0
  puts 0
  exit
end
amax = a.max
h = Array.new(amax+1, 0)
a.each do |i|
  h[i] += 1
end
if h[0] != 1
  puts 0
  exit
end
h.each do |i|
  if i == 0
    puts 0
    exit
  end
end
hmax = h.max
@pow2 = Array.new(N+1, 0)
@pow2[0] = 1
(N).times do |i|
  @pow2[i+1] = @pow2[i] * 2
  @pow2[i+1] %= R
end

def pow2mod(n)
  ret = 1
  if n > N
    while n > N
      ret *= @pow2[N]
      ret %= R
      n -= N
    end
  end
  ret *= @pow2[n]
  ret %= R
  return ret
end
ans = 1
b = 1
h[1..amax].each do |i|
  ans *= pow2mod(i * (i - 1) / 2)
  ans %= R
  ans *= (((@pow2[b] - 1) % R) ** i)
  ans %= R
  b = i
end
puts ans