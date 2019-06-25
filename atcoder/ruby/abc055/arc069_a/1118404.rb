# Contest ID: abc055
# Problem ID: arc069_a ( https://atcoder.jp/contests/abc055/tasks/arc069_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-02-18 13:19:42 +0000 UTC ( https://atcoder.jp/contests/abc055/submissions/1118404 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
ret = 0
if n >= m / 2 then
  ret += (m / 2)
else
  ret += n
  ret += ((m - 2 * n) / 4)
end
puts ret