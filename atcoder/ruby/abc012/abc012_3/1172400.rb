# Contest ID: abc012
# Problem ID: abc012_3 ( https://atcoder.jp/contests/abc012/tasks/abc012_3 )
# Title: C. 九九足し算
# Language: Ruby (2.3.3)
# Submitted: 2017-03-19 11:13:37 +0000 UTC ( https://atcoder.jp/contests/abc012/submissions/1172400 ) 

n = gets.chomp.to_i
kuku = Hash.new{|h, k| h[k] = Array.new()}
sum = 0
(1..9).each do |i|
  (1..9).each do |j|
    sum += i * j
    kuku[i*j] << "#{i} x #{j}"
  end
end
puts kuku[sum - n]