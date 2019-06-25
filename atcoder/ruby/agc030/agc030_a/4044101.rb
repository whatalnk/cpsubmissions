# Contest ID: agc030
# Problem ID: agc030_a ( https://atcoder.jp/contests/agc030/tasks/agc030_a )
# Title: A. Poisonous Cookies
# Language: Ruby (2.3.3)
# Submitted: 2019-01-19 08:04:26 +0000 UTC ( https://atcoder.jp/contests/agc030/submissions/4044101 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)

ans = 0

if c >= a
  ans += a
  c -= a
  if c >= b
    ans += b * 2
    c -= b
    if c > 0
      ans += 1
    end
  else
    ans += c
    ans += b
  end
else
  ans += c
  c = 0
  ans += b
end

puts ans