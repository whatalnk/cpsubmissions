# Contest ID: agc003
# Problem ID: agc003_c ( https://atcoder.jp/contests/agc003/tasks/agc003_c )
# Title: C. BBuBBBlesort!
# Language: Ruby (2.3.3)
# Submitted: 2016-08-23 04:10:07 +0000 UTC ( https://atcoder.jp/contests/agc003/submissions/850089 ) 

n = gets.chomp.to_i
a = Hash.new
n.times do |i|
  x = gets.chomp.to_i
  a[x] = i % 2
end

ans = 0
a.keys.sort.each_with_index do |x, i|
  ans += 1 if a[x] != i % 2
end
puts ans / 2
