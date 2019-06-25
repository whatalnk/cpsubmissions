# Contest ID: abc062
# Problem ID: abc062_b ( https://atcoder.jp/contests/abc062/tasks/abc062_b )
# Title: B. Picture Frame
# Language: Ruby (2.3.3)
# Submitted: 2017-05-20 12:09:24 +0000 UTC ( https://atcoder.jp/contests/abc062/submissions/1295832 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
puts "#" * (W + 2)
H.times do
  row = "#"
  row += gets.chomp
  row += "#"
  puts row
end
puts "#" * (W + 2)