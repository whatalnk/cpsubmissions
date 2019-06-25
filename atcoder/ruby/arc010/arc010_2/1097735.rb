# Contest ID: arc010
# Problem ID: arc010_2 ( https://atcoder.jp/contests/arc010/tasks/arc010_2 )
# Title: B. 超大型連休
# Language: Ruby (1.9.3)
# Submitted: 2017-02-05 11:19:05 +0000 UTC ( https://atcoder.jp/contests/arc010/submissions/1097735 ) 

# ref. http://arc010.contest.atcoder.jp/submissions/63133
require 'date'
n = gets.chomp.to_i
a = []
holidays = Hash.new()
sd = Date.new(2012, 1, 1)
n.times do |i|
  m, d = gets.chomp.split("/").map(&:to_i)
  holiday = (Date.new(2012, m, d) - sd).to_i
  a << holiday
  holidays[holiday] = true
end
a.sort!
ans = [0]
res = 0
h = 0
366.times do |i|
  d = sd + i
  if holidays[i]
    res += 1
    if d.saturday? || d.sunday? then
      h += 1
    end
  elsif d.saturday? || d.sunday? then
    res += 1
  else
    if h > 0 then
      res += 1
      h -= 1
    else
      ans << res
      res = 0
    end
  end
end
ans << res
puts ans.max
