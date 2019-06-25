# Contest ID: ddcc2017-qual
# Problem ID: ddcc2017_qual_a ( https://atcoder.jp/contests/ddcc2017-qual/tasks/ddcc2017_qual_a )
# Title: A. DDCC型文字列
# Language: Ruby (2.3.3)
# Submitted: 2017-10-07 12:02:05 +0000 UTC ( https://atcoder.jp/contests/ddcc2017-qual/submissions/1656433 ) 

s = gets.chomp
if s[0] == s[1] && s[1] != s[2] && s[2] == s[3]
  puts "Yes"
else
  puts "No"
end
