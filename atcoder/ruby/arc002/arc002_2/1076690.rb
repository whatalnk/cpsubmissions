# Contest ID: arc002
# Problem ID: arc002_2 ( https://atcoder.jp/contests/arc002/tasks/arc002_2 )
# Title: B. 割り切れる日付
# Language: Ruby (1.9.3)
# Submitted: 2017-01-22 17:08:47 +0000 UTC ( https://atcoder.jp/contests/arc002/submissions/1076690 ) 

require 'date'
y, m, d = gets.chomp.split("/")
curr = Date.parse("#{y}-#{m}-#{d}")
while true
  ret = curr.year % (curr.mon * curr.day)
  if ret == 0 then
    puts curr.strftime("%Y/%m/%d")
    break
  end
  curr += 1
end
