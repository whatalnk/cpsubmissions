# Contest ID: arc043
# Problem ID: arc043_b ( https://atcoder.jp/contests/arc043/tasks/arc043_b )
# Title: B. 難易度
# Language: Ruby (2.3.3)
# Submitted: 2017-10-17 16:43:01 +0000 UTC ( https://atcoder.jp/contests/arc043/submissions/1691253 ) 

N = gets.chomp.to_i
d = []
N.times do
  d << gets.chomp.to_i
end
d.sort!
R = 10**9 + 7

a = Array.new(N, 0)
i = N - 4
(N-3).downto(1) do |j|
  x = d[j]
  loop do
    break if i < 0
    if x >= d[i] * 2
      a[j] = i + 1
      break
    end
    i -= 1
  end
end

b = Array.new(N, 0)
i = 3
2.upto(N-2) do |j|
  x = d[j]
  loop do
    break if i > N - 1
    if x * 2 <= d[i]
      b[j] = N - i
      break
    end
    i += 1
  end
end
(N-2).downto(0) do |i|
  b[i] += b[i+1]
end

ans = 0
i = 2
1.upto(N-3) do |j|
  x = d[j]
  loop do
    break if i > N - 2
    if x * 2 <= d[i]
      ans += (a[j] * b[i])
      ans %= R
      break
    end
    i += 1
  end
end
puts ans