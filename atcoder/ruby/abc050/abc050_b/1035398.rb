# Contest ID: abc050
# Problem ID: abc050_b ( https://atcoder.jp/contests/abc050/tasks/abc050_b )
# Title: B. Contest with Drinks Easy
# Language: Ruby (2.3.3)
# Submitted: 2016-12-21 13:21:14 +0000 UTC ( https://atcoder.jp/contests/abc050/submissions/1035398 ) 

n = gets.chomp.to_i
ts = gets.chomp.split(" ").map(&:to_i)
ts_sum = ts.inject(:+)
m = gets.chomp.to_i
m.times do
  p, x = gets.chomp.split(" ").map(&:to_i)
  puts ts_sum - ts[p-1] + x
end
