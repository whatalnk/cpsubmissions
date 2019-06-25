# Contest ID: arc019
# Problem ID: arc019_2 ( https://atcoder.jp/contests/arc019/tasks/arc019_2 )
# Title: B. こだわりの名前
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 09:55:52 +0000 UTC ( https://atcoder.jp/contests/arc019/submissions/1098700 ) 

s = gets.chomp
n = s.length
if n == 1 then
  puts 0
elsif n.even?
  left = s[0...(n/2)]
  right = s[(n/2)...n].reverse
  d = 0
  (n/2).times do |i|
    d += 1 if left[i] != right[i] 
  end
  if d == 0 then
    puts 25 * n
    exit
  elsif d == 1 then
    puts 25 * (n - 2) + 24 * 2
    exit
  else
    puts 25 * n
    exit
  end
else
  left = s[0...((n-1)/2)]
  right = s[((n-1)/2 + 1)...n].reverse
  d = 0
  ((n-1)/2).times do |i|
    d += 1 if left[i] != right[i] 
  end
  if d == 0 then
    puts 25 * (n - 1)
    exit
  elsif d == 1 then
    puts 25 * (n - 3) + 24 * 2 + 25
    exit
  else
    puts 25 * (n - 1) + 25
    exit
  end
end