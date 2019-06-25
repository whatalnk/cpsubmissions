# Contest ID: code-festival-2018-final-open
# Problem ID: code_festival_2018_final_c ( https://atcoder.jp/contests/code-festival-2018-final-open/tasks/code_festival_2018_final_c )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2019-05-05 10:15:42 +0000 UTC ( https://atcoder.jp/contests/code-festival-2018-final-open/submissions/5279878 ) 

n = gets.chomp.to_i
ab = []
n.times do
  ab << gets.chomp.split(" ").map(&:to_i)
end
ab.sort_by!{|x| x[0]}
abmax = ab.last
abmin = ab.first
m = gets.chomp.to_i
m.times do
  t = gets.chomp.to_i
  if t >= abmax[0]
    puts abmax[1] + [0, t - abmax[0]].max
    next
  end
  if t <= abmin[0]
    puts abmin[1] + [0, t - abmin[0]].max
    next
  end
  i = ab.bsearch_index{|x| x[0] >= t}
  a1 = ab[i][1] + [0, t - ab[i][0]].max
  a2 = ab[i - 1][1] + [0, t - ab[i - 1][0]].max
  puts [a1, a2].min
end