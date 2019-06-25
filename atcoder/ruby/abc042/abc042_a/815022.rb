# Contest ID: abc042
# Problem ID: abc042_a ( https://atcoder.jp/contests/abc042/tasks/abc042_a )
# Title: A. 和風いろはちゃんイージー / Iroha and Haiku (ABC Edition)
# Language: Ruby (2.3.3)
# Submitted: 2016-07-23 12:05:02 +0000 UTC ( https://atcoder.jp/contests/abc042/submissions/815022 ) 

a, b, c = gets.chomp.split(" ")
if ((a == "5") && (b == "5") && (c == "7")) || ((a == "7") && (b == "5") && (c == "5")) || ((a == "5") && (b == "7") && (c == "5")) then
  puts "YES"
else
  puts "NO"
end
