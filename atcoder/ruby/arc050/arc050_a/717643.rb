# Contest ID: arc050
# Problem ID: arc050_a ( https://atcoder.jp/contests/arc050/tasks/arc050_a )
# Title: A. 大文字と小文字
# Language: Ruby (2.3.3)
# Submitted: 2016-05-06 05:13:50 +0000 UTC ( https://atcoder.jp/contests/arc050/submissions/717643 ) 

a, b = gets.chomp.split(" ")
if a.downcase == b then
  puts "Yes"
else
  puts "No"
end
