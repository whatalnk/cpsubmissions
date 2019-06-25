# Contest ID: agc003
# Problem ID: agc003_b ( https://atcoder.jp/contests/agc003/tasks/agc003_b )
# Title: B. Simplified mahjong
# Language: Ruby (2.3.3)
# Submitted: 2016-08-23 03:34:14 +0000 UTC ( https://atcoder.jp/contests/agc003/submissions/850072 ) 

n = gets.chomp.to_i
a = []
n.times do
  a << gets.chomp.to_i
end
ans = 0
n.times do |i|
  ans += a[i] / 2
  if a[i] % 2 == 1  && i != n - 1 then
    if a[i + 1] != 0 then
      ans += 1
      a[i + 1] -= 1
    end
  end
end
puts ans
