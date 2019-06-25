# Contest ID: nikkei2019-qual
# Problem ID: nikkei2019_qual_a ( https://atcoder.jp/contests/nikkei2019-qual/tasks/nikkei2019_qual_a )
# Title: A. Subscribers
# Language: Ruby (2.3.3)
# Submitted: 2019-01-27 12:05:03 +0000 UTC ( https://atcoder.jp/contests/nikkei2019-qual/submissions/4098277 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)

if n >= a + b
  nmin = 0
  nmax = [a, b].min
else
  nmin = a + b - n
  nmax = [a, b].min
end

puts "#{nmax} #{nmin}"
