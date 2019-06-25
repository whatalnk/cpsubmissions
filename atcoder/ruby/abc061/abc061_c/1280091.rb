# Contest ID: abc061
# Problem ID: abc061_c ( https://atcoder.jp/contests/abc061/tasks/abc061_c )
# Title: C. Big Array
# Language: Ruby (2.3.3)
# Submitted: 2017-05-13 12:14:35 +0000 UTC ( https://atcoder.jp/contests/abc061/submissions/1280091 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  h[a] += b
end

ret = 0
h.sort.each do |a, b|
  ret += b
  if ret >= k then
    puts a
    exit
  end
end