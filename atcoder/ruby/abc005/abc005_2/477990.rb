# Contest ID: abc005
# Problem ID: abc005_2 ( https://atcoder.jp/contests/abc005/tasks/abc005_2 )
# Title: B. おいしいたこ焼きの食べ方
# Language: Ruby (1.9.3)
# Submitted: 2015-08-27 01:51:27 +0000 UTC ( https://atcoder.jp/contests/abc005/submissions/477990 ) 

n = gets
res = gets.chomp.to_i
while line = gets
  t = line.chomp.to_i
  if t < res then
    res = t
  end
end
puts res