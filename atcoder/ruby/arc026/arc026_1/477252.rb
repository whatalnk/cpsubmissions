# Contest ID: arc026
# Problem ID: arc026_1 ( https://atcoder.jp/contests/arc026/tasks/arc026_1 )
# Title: A. ダイナミックなポーズ
# Language: Ruby (1.9.3)
# Submitted: 2015-08-25 09:55:39 +0000 UTC ( https://atcoder.jp/contests/arc026/submissions/477252 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)

if n <= 5 then
  res = b * n
else
  res = b * 5 + a * (n - 5)
end
puts res