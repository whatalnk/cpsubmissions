# Contest ID: abc084
# Problem ID: abc084_d ( https://atcoder.jp/contests/abc084/tasks/abc084_d )
# Title: D. 2017-like Number
# Language: Ruby (2.3.3)
# Submitted: 2018-09-28 03:41:59 +0000 UTC ( https://atcoder.jp/contests/abc084/submissions/3281831 ) 

require 'prime'

Q_MAX = 10**5

pm = Array.new(Q_MAX + 2, false)
Prime.each(Q_MAX+1) do |n|
  pm[n] = true
end

like2017 = Array.new(Q_MAX + 2, 0)

(Q_MAX+1).times do |i|
  if i.odd? && pm[i] && pm[(i+1)/2]
    like2017[i] = 1
  end
end

(Q_MAX + 1).times do |i|
  like2017[i+1] += like2017[i]
end

q = gets.chomp.to_i
q.times do 
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts like2017[r] - like2017[l-1]
end
