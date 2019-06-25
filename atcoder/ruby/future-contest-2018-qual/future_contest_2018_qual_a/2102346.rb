# Contest ID: future-contest-2018-qual
# Problem ID: future_contest_2018_qual_a ( https://atcoder.jp/contests/future-contest-2018-qual/tasks/future_contest_2018_qual_a )
# Title: A. 山型足し算
# Language: Ruby (2.3.3)
# Submitted: 2018-02-17 08:49:50 +0000 UTC ( https://atcoder.jp/contests/future-contest-2018-qual/submissions/2102346 ) 

n = 100
a = []
100.times do
  r = gets.chomp.split(" ").map(&:to_i)
  a += r
end
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
  ret << "#{x} #{y} #{h}"
end
puts ret.size
ret.each do |l|
  puts l
end