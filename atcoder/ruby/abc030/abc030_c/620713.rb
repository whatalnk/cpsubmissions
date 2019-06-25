# Contest ID: abc030
# Problem ID: abc030_c ( https://atcoder.jp/contests/abc030/tasks/abc030_c )
# Title: C. 飛行機乗り
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-26 15:11:03 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/620713 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
x, y = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

tnow = 0
res = 0
while true
  # A => B
  tnext = a.bsearch {|v| v >= tnow}
  break if tnext.nil?
  tnow = tnext + x
  # B => A
  tnext = b.bsearch {|v| v >= tnow}
  break if tnext.nil?
  tnow = tnext + y
  res += 1
end

puts res
