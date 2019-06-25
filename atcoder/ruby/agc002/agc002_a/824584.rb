# Contest ID: agc002
# Problem ID: agc002_a ( https://atcoder.jp/contests/agc002/tasks/agc002_a )
# Title: A. Range Product
# Language: Ruby (2.3.3)
# Submitted: 2016-07-31 12:08:22 +0000 UTC ( https://atcoder.jp/contests/agc002/submissions/824584 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a > 0 then
  puts "Positive"
elsif a < 0 && b >= 0 then
  puts "Zero"
elsif (b - a + 1).even? then
  puts "Positive"
else
  puts "Negative"
end
