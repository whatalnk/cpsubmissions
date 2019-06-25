# Contest ID: agc007
# Problem ID: agc007_a ( https://atcoder.jp/contests/agc007/tasks/agc007_a )
# Title: A. Shik and Stone
# Language: Ruby (2.3.3)
# Submitted: 2016-11-12 13:11:49 +0000 UTC ( https://atcoder.jp/contests/agc007/submissions/980216 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
m = Array.new()
sharp = 0
h.times do
  row = gets.chomp.split("")
  sharp += row.count("#")
  m << row
end
cx = 0
cy = 0
(h + w - 2).times do |i|
# right
  if cx + 1 < w && m[cy][cx + 1] == "#" then
    cx += 1
    sharp -= 1
# down
  elsif cy + 1 < h && m[cy + 1][cx] == "#" then
    cy += 1
    sharp -= 1
  else
    puts "Impossible"
    exit
  end
end
 
if cx == w - 1 && cy == h - 1 && sharp == 1 then
  puts "Possible"
else
  puts "Impossible"
end
 