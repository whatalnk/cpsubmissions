# Contest ID: abc118
# Problem ID: abc118_c ( https://atcoder.jp/contests/abc118/tasks/abc118_c )
# Title: C. Monsters Battle Royale
# Language: Ruby (2.3.3)
# Submitted: 2019-04-18 11:12:46 +0000 UTC ( https://atcoder.jp/contests/abc118/submissions/5017480 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

ret = a[0].gcd(a[1])
a.each do |x|
  ret = ret.gcd(x)
end
puts ret