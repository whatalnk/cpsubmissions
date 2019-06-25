# Contest ID: soundhound2018-summer-final-open
# Problem ID: soundhound2018_summer_final_a ( https://atcoder.jp/contests/soundhound2018-summer-final-open/tasks/soundhound2018_summer_final_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-06 09:51:07 +0000 UTC ( https://atcoder.jp/contests/soundhound2018-summer-final-open/submissions/5290650 ) 

c, d = gets.chomp.split(" ").map(&:to_i)
l, r = 140, 170
ans = 0

while true
  break if l > d
  ans += [0, [r, d].min - [l, c].max].max
  l *= 2
  r *= 2
end

puts ans