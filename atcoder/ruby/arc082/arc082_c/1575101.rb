# Contest ID: arc082
# Problem ID: arc082_c ( https://atcoder.jp/contests/arc082/tasks/arc082_c )
# Title: E. ConvexScore
# Language: Ruby (2.3.3)
# Submitted: 2017-09-08 15:22:28 +0000 UTC ( https://atcoder.jp/contests/arc082/submissions/1575101 ) 

# https://beta.atcoder.jp/contests/arc082/submissions/1566776

n = gets.chomp.to_i

x = []
y = []

n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  x << a
  y << b
end

md = 998244353

maxN = 201
pow2 = Array.new(maxN)
pow2[0] = 0
pow2[1] = 1

(2...maxN).each do |i|
  pow2[i] = (pow2[i - 1] * 2 + 1) % md
end

def line?(ix, iy, jx, jy, kx, ky)
  x1 = ix - jx
  y1 = iy - jy
  x2 = ix - kx
  y2 = iy - ky
  return (y1 * x2) == (y2 * x1)
end

ans = 0

(0...n).each do |i|
  ((i + 1)...n).each do |j|
    cnt1 = 0
    cnt2 = 0
    ((j + 1)...n).each do |k|
      cnt1 += 1
      if line?(x[i], y[i], x[j], y[j], x[k], y[k])
        cnt2 += 1
      end
    end

    ans += pow2[cnt1]
    ans -= pow2[cnt2]
    ans %= md
    ans += md
    ans %= md
  end
end
puts ans


