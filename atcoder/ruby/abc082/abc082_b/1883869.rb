# Contest ID: abc082
# Problem ID: abc082_b ( https://atcoder.jp/contests/abc082/tasks/abc082_b )
# Title: B. Two Anagrams
# Language: Ruby (2.3.3)
# Submitted: 2017-12-18 03:35:11 +0000 UTC ( https://atcoder.jp/contests/abc082/submissions/1883869 ) 

s = gets.chomp.split("").sort.join("")
t = gets.chomp.split("").sort.reverse.join("")
if s < t then
  puts "Yes"
else
  puts "No"
end
  