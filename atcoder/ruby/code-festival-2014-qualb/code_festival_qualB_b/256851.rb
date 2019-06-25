# Contest ID: code-festival-2014-qualb
# Problem ID: code_festival_qualB_b ( https://atcoder.jp/contests/code-festival-2014-qualb/tasks/code_festival_qualB_b )
# Title: B. 歩く人
# Language: Ruby (1.9.3)
# Submitted: 2014-10-26 12:10:31 +0000 UTC ( https://atcoder.jp/contests/code-festival-2014-qualb/submissions/256851 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
sum = 0
day = 0
while line = gets
  day += 1
  sum += line.chomp.to_i
  break if sum >= k
end
print day, "\n"