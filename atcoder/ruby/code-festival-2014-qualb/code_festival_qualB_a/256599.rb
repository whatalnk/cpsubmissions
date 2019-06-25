# Contest ID: code-festival-2014-qualb
# Problem ID: code_festival_qualB_a ( https://atcoder.jp/contests/code-festival-2014-qualb/tasks/code_festival_qualB_a )
# Title: A. あるピアニスト
# Language: Ruby (1.9.3)
# Submitted: 2014-10-26 12:06:01 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-qualb/submissions/256599 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a == b
  print a, "\n"
elsif a > b
  print a, "\n"
else
  print b, "\n"
end
