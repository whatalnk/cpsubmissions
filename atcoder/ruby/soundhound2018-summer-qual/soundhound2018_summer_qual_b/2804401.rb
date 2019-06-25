# Contest ID: soundhound2018-summer-qual
# Problem ID: soundhound2018_summer_qual_b ( https://atcoder.jp/contests/soundhound2018-summer-qual/tasks/soundhound2018_summer_qual_b )
# Title: B. Acrostic
# Language: Ruby (2.3.3)
# Submitted: 2018-07-07 12:09:05 +0000 UTC ( https://atcoder.jp/contests/soundhound2018-summer-qual/submissions/2804401 ) 

s = gets.chomp.split("")
w = gets.chomp.to_i

if w == 1
  puts s.join("")
else
  puts (1..(s.length)).to_a.select{|i| i % w  == 1}.map{|i| s[i-1]}.join("")
end