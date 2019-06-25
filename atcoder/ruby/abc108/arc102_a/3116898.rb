# Contest ID: abc108
# Problem ID: arc102_a ( https://atcoder.jp/contests/abc108/tasks/arc102_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2018-09-01 12:49:12 +0000 UTC ( https://atcoder.jp/contests/abc108/submissions/3116898 ) 

n, k = gets.chomp.split(" ").map(&:to_i)

a = n / k
if k.odd?
  puts a**3
else
  b = k / 2
  if n - k * a >= b
    puts a**3 + (a + 1)**3
  else
    puts (a**3) * 2
  end
end