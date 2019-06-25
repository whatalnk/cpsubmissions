# Contest ID: arc034
# Problem ID: arc034_1 ( https://atcoder.jp/contests/arc034/tasks/arc034_1 )
# Title: A. 首席
# Language: Ruby (1.9.3)
# Submitted: 2015-02-21 12:07:01 +0000 UTC ( https://atcoder.jp/contests/arc034/submissions/340936 ) 

n = gets.chomp.to_i
res = []
while line = gets
  points = line.chomp.split(" ").map(&:to_f)
  sum = points[0..3].inject(:+) + points[4]*110/900
  res << sum
end
puts res.max
