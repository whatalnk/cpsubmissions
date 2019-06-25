# Contest ID: abc033
# Problem ID: abc033_a ( https://atcoder.jp/contests/abc033/tasks/abc033_a )
# Title: A. 暗証番号
# Language: Ruby (2.1.5p273)
# Submitted: 2016-02-06 12:02:12 +0000 UTC ( https://atcoder.jp/contests/abc033/submissions/628918 ) 

n = gets.chomp.split("")
if n.uniq.length == 1 then
  puts "SAME"
else
  puts "DIFFERENT"
end 
