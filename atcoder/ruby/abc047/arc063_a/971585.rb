# Contest ID: abc047
# Problem ID: arc063_a ( https://atcoder.jp/contests/abc047/tasks/arc063_a )
# Title: C. 一次元リバーシ / 1D Reversi
# Language: Ruby (2.3.3)
# Submitted: 2016-11-06 12:33:09 +0000 UTC ( https://atcoder.jp/contests/abc047/submissions/971585 ) 

s = gets.chomp
n = s.length
ret = 0
(1..(n-1)).each do |i|
  if s[i] != s[i-1] then
    ret += 1
  end
end
puts ret