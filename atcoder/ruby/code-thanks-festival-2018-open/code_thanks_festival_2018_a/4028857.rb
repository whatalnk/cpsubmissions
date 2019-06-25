# Contest ID: code-thanks-festival-2018-open
# Problem ID: code_thanks_festival_2018_a ( https://atcoder.jp/contests/code-thanks-festival-2018-open/tasks/code_thanks_festival_2018_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-01-17 02:20:41 +0000 UTC ( https://atcoder.jp/contests/code-thanks-festival-2018-open/submissions/4028857 ) 

t, a, b, c, d = gets.chomp.split(" ").map(&:to_i)
if a + c <= t
  puts b + d
elsif c <= t
  puts d
elsif a <= t
  puts b
else
  puts 0
end