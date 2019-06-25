# Contest ID: abc085
# Problem ID: abc085_d ( https://atcoder.jp/contests/abc085/tasks/abc085_d )
# Title: D. Katana Thrower
# Language: Ruby (2.3.3)
# Submitted: 2018-10-14 06:04:05 +0000 UTC ( https://atcoder.jp/contests/abc085/submissions/3403549 ) 

n, h = gets.chomp.split(" ").map(&:to_i)

a = []
b = []

n.times do
  a_, b_ = gets.chomp.split(" ").map(&:to_i)
  a << a_
  b << b_
end

amax = a.max
b.sort!

ans = 0

(n-1).downto(0) do |i|
  if h <= 0
    puts ans
    exit
  end
  if b[i] > amax
    h -= b[i]
    ans += 1
  end
end

ans += h / amax

if h % amax == 0
  puts ans
else
  puts ans + 1
end