# Contest ID: abc121
# Problem ID: abc121_c ( https://atcoder.jp/contests/abc121/tasks/abc121_c )
# Title: C. Energy Drink Collector
# Language: Ruby (2.3.3)
# Submitted: 2019-03-09 12:13:16 +0000 UTC ( https://atcoder.jp/contests/abc121/submissions/4518965 ) 

N, M = gets.chomp.split(" ").map(&:to_i)

ab = []
N.times do
  ab << gets.chomp.split(" ").map(&:to_i)
end

ab.sort_by!{|x| x[0]}


mrem = M
ans = 0

N.times do |i|
  a, b = ab[i]
  buy = [mrem, b].min
  ans += a * buy
  mrem -= buy
  if mrem == 0
    puts ans
    exit
  end
end