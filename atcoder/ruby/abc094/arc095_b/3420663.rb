# Contest ID: abc094
# Problem ID: arc095_b ( https://atcoder.jp/contests/abc094/tasks/arc095_b )
# Title: D. Binomial Coefficients
# Language: Ruby (2.3.3)
# Submitted: 2018-10-17 03:05:37 +0000 UTC ( https://atcoder.jp/contests/abc094/submissions/3420663 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

amax = a.max
amid = amax / 2.0

r = a.sort{|a, b| (a - amid).abs <=> (b - amid).abs}[0]

if n == 2
  puts "#{a.max} #{a.min}"
else
  puts "#{amax} #{r}"
end