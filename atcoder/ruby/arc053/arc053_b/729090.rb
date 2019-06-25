# Contest ID: arc053
# Problem ID: arc053_b ( https://atcoder.jp/contests/arc053/tasks/arc053_b )
# Title: B. 回文分割
# Language: Ruby (2.3.3)
# Submitted: 2016-05-14 12:49:10 +0000 UTC ( https://atcoder.jp/contests/arc053/submissions/729090 ) 

s = gets.chomp
d = Hash.new(0)
s.split("").each do |c|
  d[c] += 1
end
nodd = 0
chars = 0
d.each do |k, v|
  if v.odd?
    nodd += 1
  end
  chars += v / 2
end
if nodd == 0 then
  puts s.length
else
  puts chars / nodd * 2 + 1
end
