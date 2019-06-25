# Contest ID: arc009
# Problem ID: arc009_2 ( https://atcoder.jp/contests/arc009/tasks/arc009_2 )
# Title: B. おとぎの国の高橋君
# Language: Ruby (1.9.3)
# Submitted: 2017-01-28 03:06:43 +0000 UTC ( https://atcoder.jp/contests/arc009/submissions/1080357 ) 

bb = gets.chomp.split(" ")
h = Hash.new()
10.times do |i|
  h[bb[i]] = i
end
n = gets.chomp.to_i
aa = []
n.times do
  a0 = gets.chomp
  a1 = a0.split("").map{|x| h[x]}.join("").to_i
  aa << [a0, a1]
end
puts aa.sort{|x, y| x[1] <=> y[1]}.map{|x| x[0]}