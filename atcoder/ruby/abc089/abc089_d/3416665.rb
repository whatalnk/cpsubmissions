# Contest ID: abc089
# Problem ID: abc089_d ( https://atcoder.jp/contests/abc089/tasks/abc089_d )
# Title: D. Practical Skill Test
# Language: Ruby (2.3.3)
# Submitted: 2018-10-16 05:01:01 +0000 UTC ( https://atcoder.jp/contests/abc089/submissions/3416665 ) 

h, w, d = gets.chomp.split(" ").map(&:to_i)

g = Array.new(h*w+1)
h.times do |i|
  row = gets.chomp.split(" ").map(&:to_i)
  w.times do |j|
    a = row[j]
    g[a] = [i, j]
  end
end

a = Array.new(h*w+1, 0)
1.upto(h*w-d) do |i|
  x0, y0 = g[i]
  x1, y1 = g[i+d]
  cost = (x1 - x0).abs + (y1 - y0).abs
  a[i+d] = a[i] + cost
end

q = gets.chomp.to_i

q.times do
  l, r = gets.chomp.split(" ").map(&:to_i)
  if l == r
    puts 0
  else
    puts a[r] - a[l]
  end
end