# Contest ID: abc058
# Problem ID: abc058_a ( https://atcoder.jp/contests/abc058/tasks/abc058_a )
# Title: A. ι⊥l
# Language: Ruby (2.3.3)
# Submitted: 2017-04-09 03:26:14 +0000 UTC ( https://atcoder.jp/contests/abc058/submissions/1212290 ) 

a, b, c = gets.chomp.split(" ").map(&:to_i)
if b - a == c - b then
  puts "YES"
else
  puts "NO"
end
