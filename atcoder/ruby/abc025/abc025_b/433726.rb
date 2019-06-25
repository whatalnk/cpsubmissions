# Contest ID: abc025
# Problem ID: abc025_b ( https://atcoder.jp/contests/abc025/tasks/abc025_b )
# Title: B. 双子とスイカ割り
# Language: Ruby (2.1.5p273)
# Submitted: 2015-06-27 13:13:50 +0000 UTC ( https://atcoder.jp/contests/abc025/submissions/433726 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
start = 0
while line = gets
  s, d = line.split(" ")
  d = d.to_i
  if d < a then
    d = a
  elsif d > b then
    d = b
  end
  if s == "East" then
    start += d.to_i
  else
    start -= d.to_i
  end
end
res = start.abs
if start == 0 then
  print res, "\n"
elsif start > 0 then
  print "East #{res}\n"
else
  print "West #{res}\n"
end
