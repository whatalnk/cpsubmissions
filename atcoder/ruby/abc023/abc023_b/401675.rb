# Contest ID: abc023
# Problem ID: abc023_b ( https://atcoder.jp/contests/abc023/tasks/abc023_b )
# Title: B. 手芸王
# Language: Ruby (1.9.3p550)
# Submitted: 2015-05-09 13:19:23 +0000 UTC ( https://atcoder.jp/contests/abc023/submissions/401675 ) 

n = gets.chomp.to_i
res = 0
if n.even? 
  res = -1
else
  s = gets.chomp.split("")
  ((n-1) / 2).times do
    elem = s.pop + s.shift
    if elem == "ac" || elem == "ca" || elem == "bb" then
      res += 1
    end
  end
  res = -1 if s.pop != "b"
end
if res != (n-1)/2
  res = -1
end
puts res
