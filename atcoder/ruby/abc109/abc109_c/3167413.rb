# Contest ID: abc109
# Problem ID: abc109_c ( https://atcoder.jp/contests/abc109/tasks/abc109_c )
# Title: C. Skip
# Language: Ruby (2.3.3)
# Submitted: 2018-09-09 05:28:59 +0000 UTC ( https://atcoder.jp/contests/abc109/submissions/3167413 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
xx = gets.chomp.split(" ").map(&:to_i)

nx = xx.map{|e| (x - e).abs}.sort

d = nx.shift

nx.each do |e|
  d = d.gcd(e)
end
puts d
