# Contest ID: abc004
# Problem ID: abc004_2 ( https://atcoder.jp/contests/abc004/tasks/abc004_2 )
# Title: B. 回転
# Language: Ruby (1.9.3)
# Submitted: 2014-09-20 03:40:41 +0000 UTC ( https://atcoder.jp/contests/abc004/submissions/234451 ) 

a = []
while gets
  a << $_.chomp.split(" ")
end
b = a.flatten.reverse
4.times do
  print b.shift(4).join(" "), "\n"
end
