# Contest ID: arc031
# Problem ID: arc031_2 ( https://atcoder.jp/contests/arc031/tasks/arc031_2 )
# Title: B. 埋め立て
# Language: Ruby (2.3.3)
# Submitted: 2017-10-11 01:54:32 +0000 UTC ( https://atcoder.jp/contests/arc031/submissions/1675646 ) 

n = 0
@m = Array.new()
10.times do
  row = gets.chomp.split("")
  n += row.count("o")
  @m << row
end


def area(x, y)
  @visited[y][x] = true
  ret = 0
  ret += 1 if @m[y][x] == 'o'
  [[0, -1], [1, 0], [0, 1], [-1, 0]].each do |dx, dy|
    nx = x + dx
    ny = y + dy
    if 0 <= nx && 10 > nx && 0 <= ny && 10 > ny && !@visited[ny][nx] && @m[ny][nx] == "o" then
      ret += area(nx, ny)
    end
  end
  return ret
end

10.times do |i|
  10.times do |j|
    @visited = Array.new(10){Array.new(10, false)}
    if area(i, j) == n
      puts "YES"
      exit
    end
  end
end

puts "NO"