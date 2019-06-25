# Contest ID: yahoo-procon2019-qual
# Problem ID: yahoo_procon2019_qual_a ( https://atcoder.jp/contests/yahoo-procon2019-qual/tasks/yahoo_procon2019_qual_a )
# Title: A. Anti-Adjacency
# Language: Ruby (2.3.3)
# Submitted: 2019-02-26 03:08:21 +0000 UTC ( https://atcoder.jp/contests/yahoo-procon2019-qual/submissions/4391270 ) 

n, k = gets.chomp.split(" ").map(&:to_i)

x = (k - 1) * 2 + 1

if n >= x
  puts "YES"
else
  puts "NO"
end