# Contest ID: abc048
# Problem ID: abc048_b ( https://atcoder.jp/contests/abc048/tasks/abc048_b )
# Title: B. Between a and b ...
# Language: Ruby (2.3.3)
# Submitted: 2016-12-21 13:36:06 +0000 UTC ( https://atcoder.jp/contests/abc048/submissions/1035414 ) 

a, b, x = gets.chomp.split(" ").map(&:to_i)
def fun(n, x)
  if n == -1 then
    return 0
  else
    n / x + 1
  end
end
puts fun(b, x) - fun(a - 1, x)