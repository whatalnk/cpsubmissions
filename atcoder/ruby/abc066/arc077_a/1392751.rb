# Contest ID: abc066
# Problem ID: arc077_a ( https://atcoder.jp/contests/abc066/tasks/arc077_a )
# Title: C. pushpush
# Language: Ruby (2.3.3)
# Submitted: 2017-07-01 12:19:40 +0000 UTC ( https://atcoder.jp/contests/abc066/submissions/1392751 ) 

n = gets.chomp.to_i
a = [0]
a += gets.chomp.split(" ").map(&:to_i)
a1 = []
a2 = []
(1..n).each do |i|
  if i.even?
    a1 << a[i]
  else
    a2 << a[i]
  end
end
if n.even?
  puts (a1.reverse + a2).join(" ")
else
  puts (a2.reverse + a1).join(" ")
end
