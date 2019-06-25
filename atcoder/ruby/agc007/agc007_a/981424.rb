# Contest ID: agc007
# Problem ID: agc007_a ( https://atcoder.jp/contests/agc007/tasks/agc007_a )
# Title: A. Shik and Stone
# Language: Ruby (2.3.3)
# Submitted: 2016-11-12 16:11:42 +0000 UTC ( https://atcoder.jp/contests/agc007/submissions/981424 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
s = 0
h.times do
  row = gets.chomp.split("")
  s += row.count("#")
end
if s == (h + w - 1) then
  puts "Possible"
else
  puts "Impossible"
end