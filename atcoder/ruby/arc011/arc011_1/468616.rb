# Contest ID: arc011
# Problem ID: arc011_1 ( https://atcoder.jp/contests/arc011/tasks/arc011_1 )
# Title: A. 鉛筆リサイクルの新技術
# Language: Ruby (1.9.3)
# Submitted: 2015-08-11 05:17:50 +0000 UTC ( https://atcoder.jp/contests/arc011/submissions/468616 ) 

m, n, o = gets.chomp.split(" ").map(&:to_i)
oldpen = o
rempen = 0
sumpen = o
while true
  newpen = oldpen / m * n
  rempen = oldpen % m
  oldpen = newpen + rempen
  sumpen += newpen
  if oldpen < m then
    break
  end
end
puts sumpen
