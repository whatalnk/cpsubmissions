# Contest ID: abc019
# Problem ID: abc019_3 ( https://atcoder.jp/contests/abc019/tasks/abc019_3 )
# Title: C. 高橋くんと魔法の箱
# Language: Ruby (1.9.3)
# Submitted: 2016-12-25 13:44:22 +0000 UTC ( https://atcoder.jp/contests/abc019/submissions/1044197 ) 

n = gets.chomp.to_i
aa = gets.chomp.split(" ").map(&:to_i)
aaa = []
aa.each do |a|
  while a.even?
    a /= 2
  end
  aaa << a
end
puts aaa.uniq.length