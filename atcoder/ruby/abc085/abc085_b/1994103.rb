# Contest ID: abc085
# Problem ID: abc085_b ( https://atcoder.jp/contests/abc085/tasks/abc085_b )
# Title: B. Kagami Mochi
# Language: Ruby (2.3.3)
# Submitted: 2018-01-20 05:18:22 +0000 UTC ( https://atcoder.jp/contests/abc085/submissions/1994103 ) 

n = gets.chomp.to_i
mochi = []
n.times do
  mochi << gets.chomp.to_i
end
puts mochi.uniq.length