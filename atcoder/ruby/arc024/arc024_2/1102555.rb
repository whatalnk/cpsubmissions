# Contest ID: arc024
# Problem ID: arc024_2 ( https://atcoder.jp/contests/arc024/tasks/arc024_2 )
# Title: B. 赤と黒の木
# Language: Ruby (1.9.3)
# Submitted: 2017-02-11 08:55:44 +0000 UTC ( https://atcoder.jp/contests/arc024/submissions/1102555 ) 

n = gets.chomp.to_i

tree = readlines().map(&:to_i)

aa = []
a = [tree[0]]
(1..(n - 1)).each do |i|
  if tree[i - 1] == tree[i]
    a << tree[i]
  else
    aa << a
    a = [tree[i]]
  end
end
if aa.empty? then
  puts -1
else
  if aa[0][0] == a[0] then
    aa[0] += a
  else
    aa << a
  end
  puts aa.map{|x| (x.size - 1) / 2}.max + 1
end