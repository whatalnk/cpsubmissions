# Contest ID: code-festival-2017-quala
# Problem ID: code_festival_2017_quala_d ( https://atcoder.jp/contests/code-festival-2017-quala/tasks/code_festival_2017_quala_d )
# Title: D. Four Coloring
# Language: Ruby (2.3.3)
# Submitted: 2017-09-24 16:19:01 +0000 UTC ( https://atcoder.jp/contests/code-festival-2017-quala/submissions/1626604 ) 

h, w, d = gets.chomp.split(" ").map(&:to_i)
colors = [['R', 'Y'], ['G', 'B']]
mat = Array.new(h){Array.new(w)}
h.times do |i|
  w.times do |j|
    x = i + j
    y = i - j
    xx = (x / d) % 2
    yy = (y / d) % 2
    mat[i][j] = colors[xx][yy]
  end
end
mat.each do |row|
  puts row.join("")
end