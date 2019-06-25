# Contest ID: arc010
# Problem ID: arc010_1 ( https://atcoder.jp/contests/arc010/tasks/arc010_1 )
# Title: A. 名刺交換
# Language: Ruby (1.9.3)
# Submitted: 2015-08-10 02:05:09 +0000 UTC ( https://atcoder.jp/contests/arc010/submissions/468143 ) 

n, m, a, b = gets.chomp.split(" ").map(&:to_i)
i = 0
res = true
while line = gets
  i += 1
  if n <= a then
    n += b
  end
  n -= line.to_i
  if n < 0 then
    res = false
    break
  end
end
if res then
  puts "complete"
else
  puts i
end
