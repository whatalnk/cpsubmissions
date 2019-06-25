# Contest ID: arc023
# Problem ID: arc023_1 ( https://atcoder.jp/contests/arc023/tasks/arc023_1 )
# Title: A. 経過日数
# Language: Ruby (1.9.3)
# Submitted: 2015-08-24 09:54:29 +0000 UTC ( https://atcoder.jp/contests/arc023/submissions/476835 ) 

y = gets.chomp.to_i
m = gets.chomp.to_i
d = gets.chomp.to_i

def NumOfDays(y, m, d)
  if m == 1  or m == 2 then
    yy = y - 1
    mm = m + 12
  else
    yy = y
    mm = m
  end
  dd = d
  return 365*yy + (yy/4.0).floor - (yy/100.0).floor + (yy/400.0).floor + (306*(mm+1)/10.0).floor + dd - 429
end

puts NumOfDays(2014,5,17) - NumOfDays(y,m,d)