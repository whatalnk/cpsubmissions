# Contest ID: arc043
# Problem ID: arc043_a ( https://atcoder.jp/contests/arc043/tasks/arc043_a )
# Title: A. 点数変換
# Language: Ruby (2.1.5p273)
# Submitted: 2015-08-15 12:19:16 +0000 UTC ( https://atcoder.jp/contests/arc043/submissions/470182 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
scores = []
while line = gets
  scores << line.chomp.to_f
end
if scores.max == scores.min then
  puts -1
else
  p = b / (scores.max - scores.min)
  q = (n * a - scores.inject(:+) * p) / n
  print "#{p} #{q}\n"
end
