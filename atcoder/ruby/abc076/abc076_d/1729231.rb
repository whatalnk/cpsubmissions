# Contest ID: abc076
# Problem ID: abc076_d ( https://atcoder.jp/contests/abc076/tasks/abc076_d )
# Title: D. AtCoder Express
# Language: Ruby (2.3.3)
# Submitted: 2017-11-01 06:27:11 +0000 UTC ( https://atcoder.jp/contests/abc076/submissions/1729231 ) 

n = gets.chomp.to_i
tt = gets.chomp.split(" ").map(&:to_i)
vv = [0] + gets.chomp.split(" ").map(&:to_i) + [0]
ttsum = tt.inject(:+)

ll = Array.new(n+2)
rr = Array.new(n+2)
ll[0] = 0
ll[1] = 0
rr[0] = 0

n.times do |i|
  ll[i+2] = ll[i + 1] + tt[i]
end
(n-1).times do |i|
  rr[i+1] = rr[i] + tt[i]
end
rr[n] = ttsum
ll[n+1] = ttsum
rr[n+1] = ttsum

def f(x, l, r, v)
  if x < l
    ret = v + (l - x)
  elsif x <= r
    ret = v
  else
    ret = v + (x - r)
  end
  return ret
end

arr = []
a = 0.0
while a <= ttsum
  v = (0..(n+1)).map{|i| f(a, ll[i], rr[i], vv[i])}.min
  arr << v
  a += 0.5
end
ans = 0
(arr.length - 1).times do |i|
  s = ((arr[i] + arr[i+1]) * 0.5 / 2.0)
  ans += s
end

puts ans