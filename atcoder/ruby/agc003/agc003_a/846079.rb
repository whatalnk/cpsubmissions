# Contest ID: agc003
# Problem ID: agc003_a ( https://atcoder.jp/contests/agc003/tasks/agc003_a )
# Title: A. Wanna go back home
# Language: Ruby (2.3.3)
# Submitted: 2016-08-21 12:28:04 +0000 UTC ( https://atcoder.jp/contests/agc003/submissions/846079 ) 

s = gets.chomp
if (s.include?("N") && s.include?("S") && !s.include?("E") && !s.include?("W")) || (!s.include?("N") && !s.include?("S") && s.include?("E") && s.include?("W")) || (s.include?("N") && s.include?("S") && s.include?("E") && s.include?("W")) then
  puts "Yes"
else
  puts "No"
end
