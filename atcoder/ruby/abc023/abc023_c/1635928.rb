# Contest ID: abc023
# Problem ID: abc023_c ( https://atcoder.jp/contests/abc023/tasks/abc023_c )
# Title: C. 収集王
# Language: Ruby (2.3.3)
# Submitted: 2017-09-30 06:56:17 +0000 UTC ( https://atcoder.jp/contests/abc023/submissions/1635928 ) 

r, c, k = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
candy = []
ar = Array.new(r, 0)
ac = Array.new(c, 0)
n.times do |i|
  rr, cc = gets.chomp.split(" ").map{|x| x.to_i - 1}
  ar[rr] += 1
  ac[cc] += 1
  candy << [rr, cc]
end
nn = [r+1, c+1, k+1].max
hr = Array.new(nn, 0)
hc = Array.new(nn, 0)

ar.each do |i|
  hr[i] += 1
end
ac.each do |i|
  hc[i] += 1
end

ans = 0
(k+1).times do |i|
  ans += (hr[i] * hc[k-i])
end

candy.each do |i, j|
  rc = ar[i] + ac[j]
  if rc == k + 1 then
    ans += 1
  elsif rc == k then
    ans -= 1
  end
end

puts ans