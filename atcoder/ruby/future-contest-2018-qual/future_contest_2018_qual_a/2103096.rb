# Contest ID: future-contest-2018-qual
# Problem ID: future_contest_2018_qual_a ( https://atcoder.jp/contests/future-contest-2018-qual/tasks/future_contest_2018_qual_a )
# Title: A. 山型足し算
# Language: Ruby (2.3.3)
# Submitted: 2018-02-17 09:59:13 +0000 UTC ( https://atcoder.jp/contests/future-contest-2018-qual/submissions/2103096 ) 

n = 100
a = []
n.times do
  r = gets.chomp.split(" ").map(&:to_i)
  a += r
end
org = a.clone
ret = []
1000.times do
  amax = a.max
  h = [n, amax].min
  break if h == 0
  i = a.index(amax)
  y = i / n
  x = i - (n * y)
  n.times do |yy|
    n.times do |xx|
      a[yy * n + xx] -= [0, h - (xx - x).abs - (yy - y).abs].max
    end
  end
  ret << [x, y, h]
end

b = Array.new(a.size, 0)
ret.each do |x, y, h|
  n.times do |yy|
    n.times do |xx|
      b[yy * n + xx] += [0, h - (xx - x).abs - (yy - y).abs].max
    end
  end
end

ab = org.zip(b).map{|w, ww| (w - ww).abs}

1000.times do
  amax = ab.max
  h = [n, amax].min
  break if h == 0
  i = ab.index(amax)
  y = i / n
  x = i - (n * y)
  n.times do |yy|
    n.times do |xx|
      ab[yy * n + xx] -= [0, h - (xx - x).abs - (yy - y).abs].max
    end
  end
  ret << [x, y, h]
end

q = ret.size
puts q
ret.each do |l|
  puts l.join(" ")
end
