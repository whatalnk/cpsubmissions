# Contest ID: arc054
# Problem ID: arc054_a ( https://atcoder.jp/contests/arc054/tasks/arc054_a )
# Title: A. 動く歩道
# Language: Ruby (2.3.3)
# Submitted: 2016-07-21 23:49:51 +0000 UTC ( https://atcoder.jp/contests/arc054/submissions/813808 ) 

l, x, y, s, d = gets.chomp.split(" ").map(&:to_f)
if s <= d then
  lr = d - s
  ll = l - (d - s)
else
  lr = l - (s - d)
  ll = s - d
end
if x < y then
  puts [lr / (x + y), ll / (-x + y)].min
else
  puts lr / (x + y)
end
