# Contest ID: arc029
# Problem ID: arc029_1 ( https://atcoder.jp/contests/arc029/tasks/arc029_1 )
# Title: A. 高橋君とお肉
# Language: Ruby (1.9.3)
# Submitted: 2014-09-27 12:34:04 +0000 UTC ( https://atcoder.jp/contests/arc029/submissions/241594 ) 

n = gets.chomp.to_i
t = []
res = []
while line = gets
  t << line.chomp.to_i
end
sum = t.inject(:+)
case n
when 1
  puts t[0]
when 2
  puts t.max
when 3
  t.combination(1).each do |x|
    res << [x[0], sum - x[0]].max
  end
  puts res.min
when 4
  t.combination(1).each do |x|
    res << [x[0], sum - x[0]].max
  end
  t.combination(2).each do |x|
    res << [x.inject(:+), sum - x.inject(:+)].max
  end
  puts res.min
end
