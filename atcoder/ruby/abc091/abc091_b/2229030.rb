# Contest ID: abc091
# Problem ID: abc091_b ( https://atcoder.jp/contests/abc091/tasks/abc091_b )
# Title: B. Two Colors Card Game
# Language: Ruby (2.3.3)
# Submitted: 2018-03-18 13:49:45 +0000 UTC ( https://atcoder.jp/contests/abc091/submissions/2229030 ) 

h = Hash.new(0)
n = gets.chomp.to_i
n.times do
  word = gets.chomp
  h[word] += 1
end

m = gets.chomp.to_i
m.times do
  word = gets.chomp
  h[word] -= 1
end
puts [0, h.values.max].max