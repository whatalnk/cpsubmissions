# Contest ID: agc006
# Problem ID: agc006_b ( https://atcoder.jp/contests/agc006/tasks/agc006_b )
# Title: B. Median Pyramid Easy
# Language: Ruby (2.3.3)
# Submitted: 2016-10-30 02:55:50 +0000 UTC ( https://atcoder.jp/contests/agc006/submissions/958206 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
if x == 1 || x == 2*n-1 then
  puts "No"
elsif n == 2 then
  puts "Yes"
  puts [1,2,3]
else
  if x == 2 then
    a2 = [x+1, x, x-1, x+2]
  else
    a2 = [x-1, x, x+1, x-2]
  end
  puts "Yes"
  a1 = (1..(2*n-1)).to_a
  a1 -= a2
  puts a1[0..(n-3)] + a2 + a1[(n-2)..(2*n-2-4)]
end