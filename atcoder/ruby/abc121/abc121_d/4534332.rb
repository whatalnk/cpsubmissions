# Contest ID: abc121
# Problem ID: abc121_d ( https://atcoder.jp/contests/abc121/tasks/abc121_d )
# Title: D. XOR World
# Language: Ruby (2.3.3)
# Submitted: 2019-03-10 02:57:23 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/4534332 ) 

A, B = gets.chomp.split(" ").map(&:to_i)

def f(x)
  if x.even?
    a = x / 2
    if a.even?
      ret = 0 ^ x
    else
      ret = 1 ^ x
    end
  else
    a = (x + 1) / 2
    if a.even?
      ret = 0
    else
      ret = 1
    end
  end
  ret
end

if A == B
  puts A
elsif A > 0
  puts f(A - 1) ^ f(B)
else
  puts f(B)
end
