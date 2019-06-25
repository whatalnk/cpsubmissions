# Contest ID: abc075
# Problem ID: abc075_b ( https://atcoder.jp/contests/abc075/tasks/abc075_b )
# Title: B. Minesweeper
# Language: Ruby (2.3.3)
# Submitted: 2017-10-14 12:12:48 +0000 UTC ( https://atcoder.jp/contests/abc075/submissions/1682597 ) 

H, W = gets.chomp.split(" ").map(&:to_i)
@m = []
@ans = Array.new(H){Array.new(W, 0)}

bomb = []
H.times do |i|
  row = gets.chomp.split("")
  W.times do |j|
    if row[j] == "#"
      @ans[i][j] = row[j]
      bomb << [i, j]
    end
  end
  @m << row
end

d = [[0, -1], [1, -1], [1, 0], [1, 1], [0, 1], [-1, 1], [-1, 0], [-1, -1]]
bomb.each do |i, j|
  d.each do |dx, dy|
    nx = j + dx
    ny = i + dy
    if nx >= 0 && nx < W && ny >= 0 && ny < H && @m[ny][nx] == "."
      @ans[ny][nx] += 1
    end
  end
end
@ans.each do |row|
  puts row.join("")
end