# Contest ID: ddcc2017-qual
# Problem ID: ddcc2017_qual_c ( https://atcoder.jp/contests/ddcc2017-qual/tasks/ddcc2017_qual_c )
# Title: C. 収納
# Language: Ruby (2.3.3)
# Submitted: 2017-10-07 12:22:24 +0000 UTC ( https://atcoder.jp/contests/ddcc2017-qual/submissions/1658132 ) 

n, c = gets.chomp.split(" ").map(&:to_i)
l = []
n.times do |i|
  l << [gets.chomp.to_i, i]
end
l.sort_by!{|x| x[0]}
ans = n
l.each do |ll|
  x = l.pop
  if x[1] == ll[1]
    break
  elsif ll[0] + x[0] + 1 <= c
    ans -= 1
  else
    redo
  end
end
puts ans