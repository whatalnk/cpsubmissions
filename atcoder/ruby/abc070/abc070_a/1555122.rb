# Contest ID: abc070
# Problem ID: abc070_a ( https://atcoder.jp/contests/abc070/tasks/abc070_a )
# Title: A. Palindromic Number
# Language: Ruby (2.3.3)
# Submitted: 2017-09-01 03:28:55 +0000 UTC ( https://atcoder.jp/contests/abc070/submissions/1555122 ) 

n = gets.chomp
if n == n.reverse then
  puts "Yes"
else
  puts "No"
end
