# Contest ID: yahoo-procon2018-qual
# Problem ID: yahoo_procon2018_qual_a ( https://atcoder.jp/contests/yahoo-procon2018-qual/tasks/yahoo_procon2018_qual_a )
# Title: A. yahoo
# Language: Ruby (2.3.3)
# Submitted: 2018-02-10 12:02:37 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2018-qual/submissions/2079837 ) 

s = gets.chomp
if s[0..2] == "yah" && s[3] == s[4] then
  puts "YES"
else
  puts "NO"
end
