# Contest ID: arc045
# Problem ID: arc045_b ( https://atcoder.jp/contests/arc045/tasks/arc045_b )
# Title: B. ドキドキデート大作戦高橋君
# Language: Ruby (2.1.5p273)
# Submitted: 2015-10-11 08:36:58 +0000 UTC ( https://atcoder.jp/contests/arc045/submissions/525398 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
rooms = Array.new(n+2, 0)
ranges = []
m.times do
  s, t = gets.chomp.split(" ").map(&:to_i)
  rooms[s] += 1
  rooms[t+1] -= 1
  ranges << [s, t]
end

n.times do |i|
  rooms[i+1] += rooms[i]
end

rooms = rooms.map{|i| 
  if i > 1 then
    0
  else
    i
  end
}

n.times do |i|
  rooms[i+1] += rooms[i]
end

res = []
ranges.each_with_index do |range, i|
  if rooms[range[1]] - rooms[range[0]-1] == 0 then
    res << i += 1
  end
end
puts res.length
res.each{|i| p i}