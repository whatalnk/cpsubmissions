# Contest ID: abc063
# Problem ID: abc063_b ( https://atcoder.jp/contests/abc063/tasks/abc063_b )
# Title: B. Varied
# Language: Ruby (2.3.3)
# Submitted: 2017-06-03 22:35:44 +0000 UTC ( https://atcoder.jp/contests/abc063/submissions/1330183 ) 

s = gets.chomp.split("")
n = s.length
if s.uniq.length == n then
  puts "yes"
else
  puts "no"
end
