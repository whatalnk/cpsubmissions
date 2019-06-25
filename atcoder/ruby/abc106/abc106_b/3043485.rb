# Contest ID: abc106
# Problem ID: abc106_b ( https://atcoder.jp/contests/abc106/tasks/abc106_b )
# Title: B. 105
# Language: Ruby (2.3.3)
# Submitted: 2018-08-19 07:24:27 +0000 UTC ( https://atcoder.jp/contests/abc106/submissions/3043485 ) 

n = gets.chomp.to_i

ans = 0

1.upto(n) do |i|
  next if i.even?
  d = 0
  1.upto(i) do |j|
    if i % j == 0
      d += 1
    end
  end
  if d == 8
    ans += 1
  end
end
puts ans