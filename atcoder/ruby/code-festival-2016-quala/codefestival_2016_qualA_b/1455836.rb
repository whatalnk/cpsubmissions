# Contest ID: code-festival-2016-quala
# Problem ID: codefestival_2016_qualA_b ( https://atcoder.jp/contests/code-festival-2016-quala/tasks/codefestival_2016_qualA_b )
# Title: B. 仲良しうさぎ / Friendly Rabbits
# Language: Ruby (2.3.3)
# Submitted: 2017-07-27 13:20:34 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-quala/submissions/1455836 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
h = Hash.new()
n.times do |i|
  h[i+1] = a[i]
end
ret = 0
h.each do |k, v|
  if k == h[v] then
    ret += 1
  end
end
puts ret / 2