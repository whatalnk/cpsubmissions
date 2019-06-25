# Contest ID: abc063
# Problem ID: abc063_a ( https://atcoder.jp/contests/abc063/tasks/abc063_a )
# Title: A. Restricted
# Language: Ruby (2.3.3)
# Submitted: 2017-06-03 22:31:36 +0000 UTC ( https://atcoder.jp/contests/abc063/submissions/1330179 ) 

a, b = gets.chomp.split(" ").map(&:to_i)
if a + b >= 10 then
  puts "error"
else
  puts a + b
end
