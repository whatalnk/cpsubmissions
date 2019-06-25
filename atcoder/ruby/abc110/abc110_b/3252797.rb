# Contest ID: abc110
# Problem ID: abc110_b ( https://atcoder.jp/contests/abc110/tasks/abc110_b )
# Title: B. 1 Dimensional World's Tale
# Language: Ruby (2.3.3)
# Submitted: 2018-09-23 12:16:59 +0000 UTC ( https://atcoder.jp/contests/abc110/submissions/3252797 ) 

n, m, x, y = gets.chomp.split(" ").map(&:to_i)

xx = gets.chomp.split(" ").map(&:to_i)
yy = gets.chomp.split(" ").map(&:to_i)

xxmax = [xx.max, x].max
yymin = [yy.min, y].min 

if xxmax < yymin
  puts "No War"
else
  puts "War"
end