# Contest ID: tenka1-2019-beginner
# Problem ID: tenka1_2019_a ( https://atcoder.jp/contests/tenka1-2019-beginner/tasks/tenka1_2019_a )
# Title: A. On the Way
# Language: Ruby (2.3.3)
# Submitted: 2019-04-20 12:04:08 +0000 UTC ( https://atcoder.jp/contests/tenka1-2019-beginner/submissions/5037786 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if c >= a && c <= b
  puts "Yes"
elsif c >= b && c <= a 
  puts "Yes"
else
  puts "No"
end