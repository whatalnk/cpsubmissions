# Contest ID: arc013
# Problem ID: arc013_1 ( https://atcoder.jp/contests/arc013/tasks/arc013_1 )
# Title: A. 梱包できるかな？
# Language: Ruby (1.9.3)
# Submitted: 2015-08-11 07:55:19 +0000 UTC ( https://atcoder.jp/contests/arc013/submissions/468653 ) 

n, m, l = gets.chomp.split(" ").map(&:to_i)
s, t, u = gets.chomp.split(" ").map(&:to_i)
ary = [s, t, u].permutation(3).to_a
res = []
ary.each do |a|
  if (n < a[0]) or (m < a[1]) or (l < a[2]) then
    res << 0
  else
    res << (n/a[0]) * (m/a[1]) * (l/a[2])
  end
end
puts res.max()
