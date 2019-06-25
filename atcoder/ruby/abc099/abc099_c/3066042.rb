# Contest ID: abc099
# Problem ID: abc099_c ( https://atcoder.jp/contests/abc099/tasks/abc099_c )
# Title: C. Strange Bank
# Language: Ruby (2.3.3)
# Submitted: 2018-08-24 10:21:57 +0000 UTC ( https://atcoder.jp/contests/abc099/submissions/3066042 ) 

n = gets.chomp.to_i

# 9 ^ i + 6 ^ j + k

ans = n

0.upto(n) do |i|
  x = 0
  a = i
  b = n - i
  while a > 0
    x += a % 6
    a /= 6
  end
  while b > 0
    x += b % 9
    b /= 9
  end
  ans = [ans, x].min
end

puts ans