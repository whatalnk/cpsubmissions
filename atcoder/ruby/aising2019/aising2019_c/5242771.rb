# Contest ID: aising2019
# Problem ID: aising2019_c ( https://atcoder.jp/contests/aising2019/tasks/aising2019_c )
# Title: C. Alternating Path
# Language: Ruby (2.3.3)
# Submitted: 2019-05-03 09:13:48 +0000 UTC ( https://atcoder.jp/contests/aising2019/submissions/5242771 ) 

@h, @w = gets.chomp.split(" ").map(&:to_i)
@color = []
@h.times do
  row = gets.chomp.split("").map{|x| x == "#"}
  @color << row
end

@di = [-1, 0, 1, 0]
@dj = [0, 1, 0, -1]

def isin(i, j)
  i >= 0 && i < @h && j >= 0 && j < @w
end

def check(i, j, d)
  ni = i + @di[d]
  nj = j + @dj[d]
  return false if !isin(ni, nj)
  return false if @color[i][j] == @color[ni][nj]
  true
end

used = Array.new(@h){Array.new(@w, false)}

ans = 0
b = 0
w = 0
@h.times do |i|
  @w.times do |j|
    next if used[i][j]
    b = 0
    w = 0
    que = []
    used[i][j] = true
    que << [i, j]
    while !que.empty?
      ci, cj = que.pop
      if @color[ci][cj]
        b += 1
      else
        w += 1
      end
      4.times do |d|
        next if !check(ci, cj, d)
        ni = ci + @di[d]
        nj = cj + @dj[d]
        next if used[ni][nj]
        used[ni][nj] = true
        que << [ni, nj]
      end
    end
    ans += b * w
  end
end

puts ans