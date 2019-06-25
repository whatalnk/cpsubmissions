# Contest ID: abc045
# Problem ID: arc061_a ( https://atcoder.jp/contests/abc045/tasks/arc061_a )
# Title: C. たくさんの数式 / Many Formulas
# Language: Ruby (2.3.3)
# Submitted: 2016-09-11 16:10:47 +0000 UTC ( https://atcoder.jp/contests/abc045/submissions/878912 ) 

s = gets.chomp
n = s.length

ans = 0
(1 << (n - 1)).times do |mask|
  expr = []
  (0...n).each do |i|
    if (mask & (1 << i)).zero? then
      expr += [s[i]]
    else
      expr += [s[i], "+"]
    end
  end
  ans += eval(expr.join)
end
puts ans
