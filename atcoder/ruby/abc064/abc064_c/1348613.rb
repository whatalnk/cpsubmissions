# Contest ID: abc064
# Problem ID: abc064_c ( https://atcoder.jp/contests/abc064/tasks/abc064_c )
# Title: C. Colorful Leaderboard
# Language: Ruby (2.3.3)
# Submitted: 2017-06-11 03:32:47 +0000 UTC ( https://atcoder.jp/contests/abc064/submissions/1348613 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
anyc = 0
a.each do |aa|
  if aa < 3200
    c = aa / 400
    h[c] += 1
  else
    anyc += 1
  end
end


cmin = [h.keys.length, 1].max

cmax = h.keys.length + anyc

puts [cmin, cmax].join(" ")