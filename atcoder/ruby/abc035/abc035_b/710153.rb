# Contest ID: abc035
# Problem ID: abc035_b ( https://atcoder.jp/contests/abc035/tasks/abc035_b )
# Title: B. ドローン
# Language: Ruby (2.3.3)
# Submitted: 2016-04-28 08:29:01 +0000 UTC ( https://atcoder.jp/contests/abc035/submissions/710153 ) 

s = gets.chomp.split("")
t = gets.chomp.to_i
x = 0
y = 0

ques = 0

s.each do |com|
  case com
    when "L" then
      x -= 1
    when "R" then
      x += 1
    when "U" then
      y += 1
    when "D" then
      y -= 1
    else
      ques += 1
  end
end

d = x.abs + y.abs

if t == 1 then
  puts d + ques
else
  puts [s.length % 2, d - ques].max
end
