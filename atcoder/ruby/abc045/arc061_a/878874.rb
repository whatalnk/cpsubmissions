# Contest ID: abc045
# Problem ID: arc061_a ( https://atcoder.jp/contests/abc045/tasks/arc061_a )
# Title: C. たくさんの数式 / Many Formulas
# Language: Ruby (2.3.3)
# Submitted: 2016-09-11 15:53:25 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/878874 ) 

s = gets.chomp
n = s.length

ans = 0
(1 << (n - 1)).times.each do |x|
  mask = x.to_s(2).rjust(n, "0")
  expr = []
  n.times do |i|
    if mask[i] == "0" then
      expr += [s[i]]
    else
      expr += ["+", s[i]]
    end
  end
  ans += eval(expr.join)
end
puts ans
