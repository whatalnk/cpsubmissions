# Contest ID: agc026
# Problem ID: agc026_a ( https://atcoder.jp/contests/agc026/tasks/agc026_a )
# Title: A. Colorful Slimes 2
# Language: Ruby (2.3.3)
# Submitted: 2018-07-17 02:07:47 +0000 UTC ( https://atcoder.jp/contests/agc026/submissions/2858028 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
prev = a[0]
ans = 0
l = 1
(n - 1).times do |i|
  if a[i + 1] == prev
    l += 1
  else
    ans += (l / 2)
    l = 1
  end
  prev = a[i + 1]
end
ans += (l / 2)
puts ans