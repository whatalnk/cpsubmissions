# Contest ID: abc034
# Problem ID: abc034_d ( https://atcoder.jp/contests/abc034/tasks/abc034_d )
# Title: D. 食塩水
# Language: Ruby (2.1.5p273)
# Submitted: 2016-03-13 03:23:22 +0000 UTC ( https://atcoder.jp/contests/abc034/submissions/659781 ) 

n, k = gets.chomp.split.map(&:to_i)
a = []
n.times do 
  w, p = gets.chomp.split(" ").map(&:to_f)
  a << [w, p]
end

$lower = 0.0
$upper = 100.0


def check(mid, k, a)
  ans = 0
  n = a.size
  solt = []
  n.times do |i|
    solt << a[i][0] * (a[i][1] - mid)
  end
  solt.sort!
  solt.pop(k).each do |i|
    ans += i
  end
  if (ans >= 0) then
    return true
  else
    return false
  end
end

100.times do
  $mid = ($lower + $upper) / 2
  if check($mid, k, a) then
    $lower = $mid
  else
    $upper = $mid
  end
end
puts $lower
