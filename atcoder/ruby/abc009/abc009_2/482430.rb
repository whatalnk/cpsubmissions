# Contest ID: abc009
# Problem ID: abc009_2 ( https://atcoder.jp/contests/abc009/tasks/abc009_2 )
# Title: B. 心配性な富豪、ファミリーレストランに行く。
# Language: Ruby (1.9.3)
# Submitted: 2015-08-30 07:35:42 +0000 UTC ( https://atcoder.jp/contests/abc009/submissions/482430 ) 

n = gets.chomp.to_i
prices = []
n.times do
  prices << gets.chomp.to_i
end
puts prices.sort.uniq[-2]