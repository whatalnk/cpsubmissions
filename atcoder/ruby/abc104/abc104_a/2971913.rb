# Contest ID: abc104
# Problem ID: abc104_a ( https://atcoder.jp/contests/abc104/tasks/abc104_a )
# Title: A. Rated for Me
# Language: Ruby (2.3.3)
# Submitted: 2018-08-08 10:39:16 +0000 UTC ( https://atcoder.jp/contests/abc104/submissions/2971913 ) 

r = gets.chomp.to_i
if r < 1200
  puts "ABC"
elsif r < 2800
  puts "ARC"
else
  puts "AGC"
end
