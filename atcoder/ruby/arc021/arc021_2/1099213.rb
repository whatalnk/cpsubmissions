# Contest ID: arc021
# Problem ID: arc021_2 ( https://atcoder.jp/contests/arc021/tasks/arc021_2 )
# Title: B. Your Numbers are XORed...
# Language: Ruby (1.9.3)
# Submitted: 2017-02-07 00:09:14 +0000 UTC ( https://atcoder.jp/contests/arc021/submissions/1099213 ) 

l = gets.chomp.to_i
b = readlines().map{|x| x.chomp.to_i}
a = [0]
bb = 0
(0..(l-2)).each do |i|
  bb = bb ^ b[i]
  a << bb
end
if b[l-1] == a[0] ^ a[l-1] then
  puts a
else
  puts -1
end
