# Contest ID: arc034
# Problem ID: arc034_2 ( https://atcoder.jp/contests/arc034/tasks/arc034_2 )
# Title: B. 方程式
# Language: Ruby (1.9.3)
# Submitted: 2015-02-21 12:50:29 +0000 UTC ( https://atcoder.jp/contests/arc034/submissions/341677 ) 

n = gets.chomp.to_i
nn = n.to_s.split("").length
def my_func(x)
  return x.to_s.split("").map(&:to_i).inject(:+)
end
if (n - nn*9) < 0
  s = 1
else
  s = n - nn*9
end
res = []
(s..n).each do |x|
  r = x + my_func(x)
  if r == n then
    res << x
  end
end
puts res.length
puts res if res.length > 0
