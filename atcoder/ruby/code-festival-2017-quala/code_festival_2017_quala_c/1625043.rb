# Contest ID: code-festival-2017-quala
# Problem ID: code_festival_2017_quala_c ( https://atcoder.jp/contests/code-festival-2017-quala/tasks/code_festival_2017_quala_c )
# Title: C. Palindromic Matrix
# Language: Ruby (2.3.3)
# Submitted: 2017-09-24 03:49:26 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-quala/submissions/1625043 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
n.times do
  row = gets.chomp.split("")
  row.each do |c|
    h[c] += 1
  end
end
if n.even? && m.even? then
  g1 = 0
  g2 = 0
elsif n.odd? && m.odd? then
  g1 = 1
  g2 = (n / 2) + (m / 2)
else
  g1 = 0
  g2 = 0
  g2 += (n / 2) if n.even?
  g2 += (m / 2) if m.even?
  g4 = (n / 2) * (m / 2)
end

flag = true
h.each do |k, v|
  if g1 < 0 || g2 < 0 then
    flag = false
    break
  end
  if v % 4 == 0 then
    next
  elsif v % 4 == 2 then
    g2 -= 1
  elsif v % 4 == 3 then
    g2 -= 1
    g1 -= 1
  else
    g1 -= 1
  end
end

if flag then
  puts "Yes"
else
  puts "No"
end