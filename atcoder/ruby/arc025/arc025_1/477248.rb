# Contest ID: arc025
# Problem ID: arc025_1 ( https://atcoder.jp/contests/arc025/tasks/arc025_1 )
# Title: A. ゴールドラッシュ
# Language: Ruby (1.9.3)
# Submitted: 2015-08-25 09:50:57 +0000 UTC ( https://atcoder.jp/contests/arc025/submissions/477248 ) 

d = gets.chomp.split(" ").map(&:to_i)
j = gets.chomp.split(" ").map(&:to_i)
res = 0
(0..6).each do |i|
  if d[i] < j[i] then
    res += j[i]
  else
  res += d[i]
  end
end
puts res

