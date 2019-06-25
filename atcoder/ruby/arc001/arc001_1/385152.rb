# Contest ID: arc001
# Problem ID: arc001_1 ( https://atcoder.jp/contests/arc001/tasks/arc001_1 )
# Title: A. センター採点
# Language: Ruby (1.9.3)
# Submitted: 2015-04-12 08:37:11 +0000 UTC ( https://atcoder.jp/contests/arc001/submissions/385152 ) 

n = gets.chomp.to_i
c = gets.chomp.split("").map(&:to_i)
ans = [1,2,3,4]
cnt = []
ans.each do |a|
  cnt << c.count(a)
end
print cnt.max, " ", cnt.min, "\n"
