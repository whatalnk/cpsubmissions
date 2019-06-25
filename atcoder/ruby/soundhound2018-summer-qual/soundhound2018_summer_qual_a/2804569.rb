# Contest ID: soundhound2018-summer-qual
# Problem ID: soundhound2018_summer_qual_a ( https://atcoder.jp/contests/soundhound2018-summer-qual/tasks/soundhound2018_summer_qual_a )
# Title: A. F
# Language: Ruby (2.3.3)
# Submitted: 2018-07-07 12:10:22 +0000 UTC ( https://atcoder.jp/contests/soundhound2018-summer-qual/submissions/2804569 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a + b == 15 then
  puts "+"
elsif a * b == 15 then
  puts "*"
else
  puts "x"
end