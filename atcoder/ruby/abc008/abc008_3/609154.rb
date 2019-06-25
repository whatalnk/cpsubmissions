# Contest ID: abc008
# Problem ID: abc008_3 ( https://atcoder.jp/contests/abc008/tasks/abc008_3 )
# Title: C. コイン
# Language: Ruby (1.9.3)
# Submitted: 2016-01-10 08:48:50 +0000 UTC ( https://atcoder.jp/contests/abc008/submissions/609154 ) 

n = gets.chomp.to_i
cc = readlines.map(&:to_i)

res = 0.0
cc.each do |c|
  k = 0
  cc.each do |f|
    k += 1 if c % f == 0
  end
  if k.even? then
    res += (k / 2.0) / k
  else
    res += ((k + 1) / 2.0) / k
  end
end
puts res
