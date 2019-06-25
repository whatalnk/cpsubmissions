# Contest ID: abc057
# Problem ID: abc057_b ( https://atcoder.jp/contests/abc057/tasks/abc057_b )
# Title: B. Checkpoints
# Language: Ruby (2.3.3)
# Submitted: 2017-03-26 12:11:30 +0000 UTC ( https://atcoder.jp/contests/abc057/submissions/1181711 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
ab = []
n.times do
  ab << gets.chomp.split(" ").map(&:to_i)
end

cd = []
m.times do
  cd << gets.chomp.split(" ").map(&:to_i)
end

ab.each do |a, b|
  cp = cd.map{|c, d| (a - c).abs + (b - d).abs}
  puts cp.index(cp.min) + 1
end
