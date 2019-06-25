# Contest ID: ddcc2016-qual
# Problem ID: ddcc_2016_qual_c ( https://atcoder.jp/contests/ddcc2016-qual/tasks/ddcc_2016_qual_c )
# Title: C. ロト2
# Language: Ruby (2.3.3)
# Submitted: 2016-11-06 03:32:19 +0000 UTC ( https://atcoder.jp/contests/ddcc2016-qual/submissions/969718 ) 

n, k = gets.chomp.split(" ").map(&:to_i)
aa = gets.chomp.split(" ").map(&:to_i)
h = Hash.new(0)
aa.each do |x|
  a = x.gcd(k)
  h[a] += 1
end
ret = 0
h.keys.repeated_combination(2).each do |a, b|
  next if (a * b) % k != 0
  if a == b then
    ret += h[a] * (h[b] - 1) / 2
  else
    ret += h[a] * h[b]
  end
end
puts ret