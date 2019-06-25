# Contest ID: abc044
# Problem ID: abc044_a ( https://atcoder.jp/contests/abc044/tasks/abc044_a )
# Title: A. 高橋君とホテルイージー / Tak and Hotels (ABC Edit)
# Language: Ruby (2.3.3)
# Submitted: 2016-08-28 12:07:36 +0000 UTC ( https://atcoder.jp/contests/abc044/submissions/855042 ) 

n = gets.chomp.to_i
k = gets.chomp.to_i
x = gets.chomp.to_i
y = gets.chomp.to_i
if n <= k then
  puts n * x
else
  puts k * x + (n - k) * y
end
