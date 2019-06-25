# Contest ID: abc010
# Problem ID: abc010_3 ( https://atcoder.jp/contests/abc010/tasks/abc010_3 )
# Title: C. 浮気調査
# Language: Ruby (2.3.3)
# Submitted: 2017-03-19 08:45:52 +0000 UTC ( https://atcoder.jp/contests/abc010/submissions/1172234 ) 

txa, tya, txb, tyb, t, v = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
ret = "NO"
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  l1 = Math.sqrt((txa - x)**2 + (tya - y)**2)
  l2 = Math.sqrt((x - txb)**2 + (y - tyb)**2)
  if (t * v) >= (l1 + l2) then
    ret = "YES"
  end
end
puts ret