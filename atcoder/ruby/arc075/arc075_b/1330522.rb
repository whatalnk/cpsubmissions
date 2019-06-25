# Contest ID: arc075
# Problem ID: arc075_b ( https://atcoder.jp/contests/arc075/tasks/arc075_b )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-06-04 04:02:50 +0000 UTC ( https://atcoder.jp/contests/arc075/submissions/1330522 ) 

n, $a, $b = gets.chomp.split(" ").map(&:to_i)

$h = []
n.times do
  $h << gets.chomp.to_f
end

def enough(i)
  ret = $h.map{|x| ([(x - i * $b), 0].max / ($a - $b)).ceil}.inject(:+)
  return ret <= i
end

puts (1..$h.max.to_i).bsearch{|i| enough(i)}
