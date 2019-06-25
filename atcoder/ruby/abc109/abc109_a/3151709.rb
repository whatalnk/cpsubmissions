# Contest ID: abc109
# Problem ID: abc109_a ( https://atcoder.jp/contests/abc109/tasks/abc109_a )
# Title: A. ABC333
# Language: Ruby (2.3.3)
# Submitted: 2018-09-08 12:02:07 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/3151709 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if (a * b).even?
  puts "No"
else
  puts "Yes"
end
