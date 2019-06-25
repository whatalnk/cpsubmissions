# Contest ID: abc107
# Problem ID: abc107_b ( https://atcoder.jp/contests/abc107/tasks/abc107_b )
# Title: B. Grid Compression
# Language: Ruby (2.3.3)
# Submitted: 2018-08-25 12:33:46 +0000 UTC ( https://atcoder.jp/contests/abc107/submissions/3075404 ) 

h, w = gets.chomp.split(" ").map(&:to_i)

g = []

h.times do
  g += gets.chomp.split("")
end

cand = []
w.times do |i|
  x = h.times.map{|j| i + j * w}
  if x.map{|j| g[j]}.all?{|c| c == "."}
    cand += x
  end
end

g = (h * w).times.select{|i| !cand.include?(i)}.map{|i| g[i]}

w -= (cand.length / h)

g.each_slice(w) do |row|
  if row.all?{|c| c == "."}
    next
  else
    puts row.join("")
  end
end
