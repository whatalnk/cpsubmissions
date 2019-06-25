# Contest ID: s8pc-1
# Problem ID: s8pc_1_b ( https://atcoder.jp/contests/s8pc-1/tasks/s8pc_1_b )
# Title: B. ケーキ・カッティング (Cake Cutting)
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-25 11:50:08 +0000 UTC ( https://atcoder.jp/contests/s8pc-1/submissions/620241 ) 

h, w, n = gets.chomp.split(" ").map(&:to_i)

if n.odd? then
  puts -1
  exit
end

berries = []
n.times do
  berries << gets.chomp.split(" ").map(&:to_i)
end

res = []

(0..w).each do |i|
  part = 0
  berries.each do |b|
    if b[1] * i - b[0] * w  < 0 then
      part += 1
    end
  end
  if part == n / 2 then
    res << [i, h]
  end
end

(0...h).each do |i|
  part = 0
  berries.each do |b|
    if b[1] * w - b[0] * i  < 0 then
      part += 1
    end
  end
  if part == n / 2 then
    res << [w, i]
  end
end
if res.empty? then
  puts -1
else
  res.sort.each do |i|
    puts "(#{i[0]},#{i[1]})"
  end
end
