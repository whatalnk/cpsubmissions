# Contest ID: abc016
# Problem ID: abc016_3 ( https://atcoder.jp/contests/abc016/tasks/abc016_3 )
# Title: C. 友達の友達
# Language: Ruby (1.9.3)
# Submitted: 2014-12-06 12:53:39 +0000 UTC ( https://atcoder.jp/contests/abc016/submissions/291445 ) 

n, m = gets.chomp.split(" ").map(&:to_i)
friends = {}
(1..n).each do |k|
  friends[k] = []
end

while line = gets
  a, b = line.chomp.split(" ").map(&:to_i)
  friends[a] << b
  friends[b] << a
end


friends.each do |k, v|
  res = []
  v.each do |f|
    res << friends[f]
  end
  v << k
  puts (res.flatten.uniq - v).size
end

