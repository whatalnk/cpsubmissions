# Contest ID: arc079
# Problem ID: arc079_b ( https://atcoder.jp/contests/arc079/tasks/arc079_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-07-30 15:40:53 +0000 UTC ( https://atcoder.jp/contests/arc079/submissions/1473476 ) 

k = gets.chomp.to_i
n = 50
ret = (0...n).to_a

x = k / n
rem = k % n

ret.map!{|i| i + x}

rem.times do |i|
  amin = ret.min
  imin = ret.index(amin)
  ret.map!{|e| e - 1}
  ret[imin] += (n + 1)
end

puts n
puts ret.join(" ")