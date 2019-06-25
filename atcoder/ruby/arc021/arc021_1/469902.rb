# Contest ID: arc021
# Problem ID: arc021_1 ( https://atcoder.jp/contests/arc021/tasks/arc021_1 )
# Title: A. DEAD END
# Language: Ruby (1.9.3)
# Submitted: 2015-08-15 07:06:11 +0000 UTC ( https://atcoder.jp/contests/arc021/submissions/469902 ) 

tiles = []
while line = gets
  tiles << line.chomp.split(" ").map(&:to_i)
end

def check_tile(tiles, r, c, dr, dc)
  if (r + dr < 0) or (c + dc < 0) or (r + dr > 3) or (c + dc > 3) then
    return false
  else
    return tiles[r][c] == tiles[r + dr][c + dc]
  end
end

res = []
(0..3).each do |r|
  (0..3).each do |c|
    res << (check_tile(tiles, r, c, -1, 0) or check_tile(tiles, r, c, 0, 1) or check_tile(tiles, r, c, 1, 0) or check_tile(tiles, r, c, 0, -1))
  end
end

if res.any? then
  puts "CONTINUE"
else
  puts "GAMEOVER"
end
