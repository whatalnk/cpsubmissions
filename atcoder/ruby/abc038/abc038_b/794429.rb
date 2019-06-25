# Contest ID: abc038
# Problem ID: abc038_b ( https://atcoder.jp/contests/abc038/tasks/abc038_b )
# Title: B. ディスプレイ
# Language: Ruby (2.3.3)
# Submitted: 2016-07-07 09:25:09 +0000 UTC ( https://atcoder.jp/contests/abc038/submissions/794429 ) 

h1, w1 = gets.chomp.split(" ").map(&:to_i)
h2, w2 = gets.chomp.split(" ").map(&:to_i)
if (h1 == h2) or (h1 == w2) or (w1 == h2) or (w1 == w2) then
  puts "YES"
else
  puts "NO"
end
