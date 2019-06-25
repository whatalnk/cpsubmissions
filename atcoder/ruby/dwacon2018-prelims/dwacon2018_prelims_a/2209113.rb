# Contest ID: dwacon2018-prelims
# Problem ID: dwacon2018_prelims_a ( https://atcoder.jp/contests/dwacon2018-prelims/tasks/dwacon2018_prelims_a )
# Title: A. ニコニコ文字列判定
# Language: Ruby (2.3.3)
# Submitted: 2018-03-15 13:17:22 +0000 UTC ( https://atcoder.jp/contests/dwacon2018-prelims/submissions/2209113 ) 

s = gets.chomp
if s[0] == s[2] && s[1] == s[3] then
  puts "Yes"
else
  puts "No"
end
  