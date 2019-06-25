# Contest ID: abc020
# Problem ID: abc020_c ( https://atcoder.jp/contests/abc020/tasks/abc020_c )
# Title: C. 壁抜け
# Language: Ruby (2.3.3)
# Submitted: 2017-10-05 12:10:41 +0000 UTC ( https://atcoder.jp/contests/abc020/submissions/1652955 ) 

Inf = 2 << 31
H, W, T = gets.chomp.split(" ").map(&:to_i)

m = Array.new(H){Array.new(W)}
start = 0
goal = 0
H.times do |i|
  row = gets.chomp.split("")
  W.times do |j|
    m[i][j] = row[j]
    if row[j] == "S"
      # flatten matrix indices
      start = i * W + j
    elsif row[j] == "G"
      goal = i * W + j
    end
  end
end

edge = Struct.new("Edge", :from, :to, :cost)

# four adjacent
d = [[0, -1], [1, 0], [0, 1], [-1, 0]]

# make graph from matrix
es = Array.new()
H.times do |i|
  W.times do |j|
    from = i * W + j 
    d.each do |dx, dy|
      ny = i + dy
      nx = j + dx
      if nx >= 0 && nx < W && ny >= 0 && ny < H
        to = ny * W + nx
        if m[ny][nx] == "#"
          cost = 0
        else
          cost = 1
        end
        e = edge.new(from, to, cost)
        es << e
      end
    end
  end
end

low = 1
high = T
while true
  # binary search
  wt = (low + high) / 2
  costs = [wt, 1]
  # Bellman-Ford
  dist = Array.new(H * W, Inf)
  dist[start] = 0
  while true
    update = false
    es.size.times do |i|
      e = es[i]
      if (dist[e.from] != Inf) && (dist[e.to] > dist[e.from] + costs[e.cost])
        dist[e.to] = dist[e.from] + costs[e.cost]
        update = true
      end
    end
    break if !update
  end

  # end binary search
  if high - low == 1 then
    puts wt
    exit
  end

  # update low or high 
  if dist[goal] <= T
    low = wt
  else
    high = wt
  end
end