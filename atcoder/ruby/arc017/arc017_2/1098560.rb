# Contest ID: arc017
# Problem ID: arc017_2 ( https://atcoder.jp/contests/arc017/tasks/arc017_2 )
# Title: B. 解像度が低い。
# Language: Ruby (1.9.3)
# Submitted: 2017-02-06 07:24:10 +0000 UTC ( https://atcoder.jp/contests/arc017/submissions/1098560 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
a = readlines().map{|x| x.chomp.to_i}
aa = [a[0]]
ret = 0
(1...n).each do |i|
  if a[i-1] < a[i] then
    aa << a[i]
  else
    ret += [aa.size - k + 1, 0].max
    aa.clear()
    aa << a[i]
  end
end
ret += [aa.size - k + 1, 0].max
puts ret