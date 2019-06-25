# Contest ID: abc075
# Problem ID: abc075_a ( https://atcoder.jp/contests/abc075/tasks/abc075_a )
# Title: A. One out of Three
# Language: Ruby (2.3.3)
# Submitted: 2017-10-14 12:01:16 +0000 UTC ( https://atcoder.jp/contests/abc075/submissions/1681381 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if a == b
  puts c
elsif b == c
  puts a
else
  puts b
end
