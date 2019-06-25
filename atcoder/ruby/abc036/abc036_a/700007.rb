# Contest ID: abc036
# Problem ID: abc036_a ( https://atcoder.jp/contests/abc036/tasks/abc036_a )
# Title: A. お茶
# Language: Ruby (2.3.3)
# Submitted: 2016-04-20 12:04:41 +0000 UTC ( https://atcoder.jp/contests/abc036/submissions/700007 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
c = b / a
if a * c < b then
  puts c + 1
else
  puts c 
end
