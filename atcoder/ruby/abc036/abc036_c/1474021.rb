# Contest ID: abc036
# Problem ID: abc036_c ( https://atcoder.jp/contests/abc036/tasks/abc036_c )
# Title: C. 座圧
# Language: Ruby (2.3.3)
# Submitted: 2017-07-31 05:37:31 +0000 UTC ( https://atcoder.jp/contests/abc036/submissions/1474021 ) 

n = gets.chomp.to_i
arr = []
n.times do
  arr << gets.chomp.to_i
end

h = Hash.new()
arr.each do |a|
  h[a] = 0
end

arr.uniq.sort.each_with_index do |a, i|
  h[a] = i
end

arr.each do |a|
  puts h[a]
end
