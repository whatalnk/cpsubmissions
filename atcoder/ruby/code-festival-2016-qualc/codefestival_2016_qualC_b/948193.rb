# Contest ID: code-festival-2016-qualc
# Problem ID: codefestival_2016_qualC_b ( https://atcoder.jp/contests/code-festival-2016-qualc/tasks/codefestival_2016_qualC_b )
# Title: B. K個のケーキ / K Cakes
# Language: Ruby (2.3.3)
# Submitted: 2016-10-23 14:53:45 +0000 UTC ( https://atcoder.jp/contests/code-festival-2016-qualc/submissions/948193 ) 

k, t = gets.chomp.split(" ").map(&:to_i)
aa = gets.chomp.split(" ").map(&:to_i).sort
aamax = aa.last
puts [aamax - 1 - (k - aamax), 0].max