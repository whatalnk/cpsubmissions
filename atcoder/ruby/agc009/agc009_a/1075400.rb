# Contest ID: agc009
# Problem ID: agc009_a ( https://atcoder.jp/contests/agc009/tasks/agc009_a )
# Title: A. Multiple Array
# Language: Ruby (2.3.3)
# Submitted: 2017-01-22 13:09:57 +0000 UTC ( https://atcoder.jp/contests/agc009/submissions/1075400 ) 

n = gets.chomp.to_i
aa = []
bb = []
 
n.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  aa << a
  bb << b
end
 
ret = 0
 
(n-1).downto(0).each do |i|
  if bb[i] == 1 || aa[i] == 0 then
    c = 0
  elsif aa[i] >= bb[i] && aa[i] % bb[i] == 0
    c = 0
  elsif  aa[i] > bb[i] then
    c =  (aa[i] / bb[i] + 1) * bb[i] - aa[i]
  else
    c = bb[i] - aa[i]
  end
  ret += c
  aa[i] += c
  aa[i-1] += ret if i > 0
end
 
puts ret