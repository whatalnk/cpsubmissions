# Contest ID: dwango2016-prelims
# Problem ID: dwango2016qual_b ( https://atcoder.jp/contests/dwango2016-prelims/tasks/dwango2016qual_b )
# Title: B. 積み鉛筆
# Language: Ruby (2.1.5p273)
# Submitted: 2016-01-23 11:50:30 +0000 UTC ( https://atcoder.jp/contests/dwango2016-prelims/submissions/616787 ) 

n = gets.chomp.to_i
k = gets.chomp.split(" ").map(&:to_i)
res = []
(n - 2).times do |i|
  res << [k[i], k[i + 1]].min
end
res.unshift(k.first)
res.push(k.last)
puts res.join(" ")