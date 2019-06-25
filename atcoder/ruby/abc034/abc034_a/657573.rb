# Contest ID: abc034
# Problem ID: abc034_a ( https://atcoder.jp/contests/abc034/tasks/abc034_a )
# Title: A. テスト
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-12 12:03:34 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/657573 ) 

x, y = gets.chomp.split(" ").map(&:to_i)
if x < y then
  puts "Better"
else
  puts "Worse"
end
