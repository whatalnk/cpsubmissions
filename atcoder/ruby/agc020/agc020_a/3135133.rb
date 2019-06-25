# Contest ID: agc020
# Problem ID: agc020_a ( https://atcoder.jp/contests/agc020/tasks/agc020_a )
# Title: A. Move and Win
# Language: Ruby (2.3.3)
# Submitted: 2018-09-04 11:49:42 +0000 UTC ( https://atcoder.jp/contests/agc020/submissions/3135133 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)

d = b - a - 1

if d.even?
  puts "Borys"
else
  puts "Alice"
end
