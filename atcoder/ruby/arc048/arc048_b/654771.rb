# Contest ID: arc048
# Problem ID: arc048_b ( https://atcoder.jp/contests/arc048/tasks/arc048_b )
# Title: B. AtCoderでじゃんけんを
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-07 01:12:02 +0000 UTC ( https://atcoder.jp/contests/arc048/submissions/654771 ) 

n = gets.chomp.to_i
rh = Array.new(100000+1){Array.new(4){Array.new()}}
n.times do |i|
  r, h = gets.chomp.split.map(&:to_i)
  rh[r][h] << i
end

k = 0
win = Array.new(n, 0)
lose = Array.new(n, 0)
draw = Array.new(n, 0)

rh.each do |r|
  next if r.all?{|c| c.empty?}
  # h = r[1]
  a = r[1].length
  b = r[2].length
  c = r[3].length
  r[1].each do |id|
    win[id] += (k + b)
    lose[id] += (n - k - a - b)
    draw[id] += (a - 1)
  end
  r[2].each do |id|
    win[id] += (k + c)
    lose[id] += (n - k - b - c)
    draw[id] += (b - 1)
  end
  r[3].each do |id|
    win[id] += (k + a)
    lose[id] += (n - k - c - a)
    draw[id] += (c - 1)
  end
  k += (a + b + c)
end

n.times do |i|
  puts sprintf("%i %i %i", win[i], lose[i], draw[i])
end
