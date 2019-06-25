# Contest ID: abc060
# Problem ID: abc060_a ( https://atcoder.jp/contests/abc060/tasks/abc060_a )
# Title: A. Shiritori
# Language: Ruby (2.3.3)
# Submitted: 2017-04-29 12:06:14 +0000 UTC ( https://atcoder.jp/contests/abc060/submissions/1249462 ) 

a, b, c = gets.chomp.split(" ")
if a[-1] == b[0] && b[-1] == c[0] then
  puts "YES"
else
  puts "NO"
end
