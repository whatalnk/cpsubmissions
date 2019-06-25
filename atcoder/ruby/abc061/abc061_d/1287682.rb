# Contest ID: abc061
# Problem ID: abc061_d ( https://atcoder.jp/contests/abc061/tasks/abc061_d )
# Title: D. Score Attack
# Language: Ruby (2.3.3)
# Submitted: 2017-05-14 07:44:57 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1287682 ) 

N, m = gets.chomp.split(" ").map(&:to_i)
INF = 1 << 50
N_MAX = 1000
M_MAX = 2000
a = Array.new(N_MAX)
b = Array.new(M_MAX)
c = Array.new(M_MAX)

m.times do |i|
  aa, bb, cc = gets.chomp.split(" ").map(&:to_i)
  a[i] = aa
  b[i] = bb
  c[i] = cc * -1
end

dist = Array.new(N_MAX, INF)

dist[0] = 0

(N - 1).times do |loop|
  m.times do |i|
    next if dist[a[i] - 1] == INF
    if dist[b[i] - 1] > dist[a[i] - 1] + c[i] then
      dist[b[i] - 1] = dist[a[i] - 1] + c[i]
    end
  end  
end

ans = dist[N - 1]

negative = Array.new(N_MAX, false)

N.times do |loop|
  m.times do |i|
    next if dist[a[i] - 1] == INF
    if dist[b[i] - 1] > dist[a[i] - 1] + c[i] then
      dist[b[i] - 1] = dist[a[i] - 1] + c[i]
      negative[b[i] - 1] = true
    end
    
    if negative[a[i] - 1] then
      negative[b[i] - 1] = true
    end
  end
end

if negative[N - 1]
  puts "inf"
else
  puts ans * -1
end
