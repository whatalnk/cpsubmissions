# Contest ID: apc001
# Problem ID: apc001_b ( https://atcoder.jp/contests/apc001/tasks/apc001_b )
# Title: B. Two Arrays
# Language: Ruby (2.3.3)
# Submitted: 2018-02-04 12:25:52 +0000 UTC ( https://atcoder.jp/contests/apc001/submissions/2064589 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)

sum_a = 0
sum_b = 0
cnt_a = 0
cnt_b = 0
n.times do |i|
  if a[i] < b[i] then
    cnt_a += ((b[i] - a[i]) / 2.0).ceil
  else
    cnt_b += (a[i] - b[i])
  end
  sum_a += a[i]
  sum_b += b[i]
end
d = sum_b - sum_a
if d < 0 then
  puts "No"
elsif cnt_a > d || cnt_b > d then
  puts "No"
else
  puts "Yes"
end