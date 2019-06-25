# Contest ID: agc023
# Problem ID: agc023_a ( https://atcoder.jp/contests/agc023/tasks/agc023_a )
# Title: A. Zero-Sum Ranges
# Language: Ruby (2.3.3)
# Submitted: 2018-07-15 13:30:14 +0000 UTC ( https://atcoder.jp/contests/agc023/submissions/2852927 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
s = [0]
n.times do |i|
  s[i+1] = s[i] + a[i]
end
h = Hash.new(0)
s.each do |i|
  h[i] += 1
end

ans = 0

h.each do |k, v|
  if v == 1
    next
  elsif v == 2
    ans += 1
  else
    ans += (v * (v - 1) / 2)
  end
end

puts ans