# Contest ID: arc048
# Problem ID: arc048_a ( https://atcoder.jp/contests/arc048/tasks/arc048_a )
# Title: A. 階段の下
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-05 12:30:32 +0000 UTC ( https://atcoder.jp/contests/arc048/submissions/652957 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if b > 0 && a < 0 then
  puts b - a - 1
else
  puts b - a
end