# Contest ID: agc002
# Problem ID: agc002_b ( https://atcoder.jp/contests/agc002/tasks/agc002_b )
# Title: B. Box and Ball
# Language: Ruby (2.3.3)
# Submitted: 2016-07-31 12:30:01 +0000 UTC ( https://atcoder.jp/contests/agc002/submissions/825614 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
box = Struct.new("Box", :red, :n)
boxes = Array.new(n+1){box.new(false, 1)}
boxes[1][:red] = true
m.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  if boxes[x][:red] then
    boxes[y][:red] = true
  end
  boxes[x][:n] = boxes[x][:n] - 1
  if boxes[x][:n] == 0 then
    boxes[x][:red] = false
  end
  boxes[y][:n] = boxes[y][:n] + 1  
end
res = 0
boxes.each do |bx|
  res += 1 if bx[:red] && (bx[:n] != 0)
end
puts res
