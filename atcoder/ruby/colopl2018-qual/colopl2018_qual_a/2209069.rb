# Contest ID: colopl2018-qual
# Problem ID: colopl2018_qual_a ( https://atcoder.jp/contests/colopl2018-qual/tasks/colopl2018_qual_a )
# Title: A. すぬけそだて――登録――
# Language: Ruby (2.3.3)
# Submitted: 2018-03-15 13:09:09 +0000 UTC ( https://atcoder.jp/contests/colopl2018-qual/submissions/2209069 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
if s.length >= a && s.length <= b then
  puts "YES"
else
  puts "NO"
end
  