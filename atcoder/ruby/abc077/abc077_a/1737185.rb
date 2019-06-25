# Contest ID: abc077
# Problem ID: abc077_a ( https://atcoder.jp/contests/abc077/tasks/abc077_a )
# Title: A. Rotation
# Language: Ruby (2.3.3)
# Submitted: 2017-11-04 12:03:40 +0000 UTC ( https://atcoder.jp/contests/abc077/submissions/1737185 ) 

s1 = gets.chomp
s2 = gets.chomp

if s1 == s2.reverse && s2 == s1.reverse
  puts "YES"
else
  puts "NO"
end