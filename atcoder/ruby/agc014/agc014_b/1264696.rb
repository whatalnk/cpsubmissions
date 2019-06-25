# Contest ID: agc014
# Problem ID: agc014_b ( https://atcoder.jp/contests/agc014/tasks/agc014_b )
# Title: B. Unplanned Queries
# Language: Ruby (2.3.3)
# Submitted: 2017-05-06 12:52:53 +0000 UTC ( https://atcoder.jp/contests/agc014/submissions/1264696 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)

m.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  h[a] += 1
  h[b] += 1
end

if h.values.all?{|x| x.even?} then
  puts "YES"
else
  puts "NO"
end
