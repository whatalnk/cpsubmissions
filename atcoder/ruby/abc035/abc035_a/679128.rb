# Contest ID: abc035
# Problem ID: abc035_a ( https://atcoder.jp/contests/abc035/tasks/abc035_a )
# Title: A. テレビ
# Language: Ruby (2.3.3)
# Submitted: 2016-03-28 07:27:24 +0000 UTC ( https://atcoder.jp/contests/abc035/submissions/679128 ) 

w, h = gets.chomp.split(" ").map(&:to_f)

x = w / 4

if 3 * x == h then
  puts "4:3"
else 
  puts "16:9"
end