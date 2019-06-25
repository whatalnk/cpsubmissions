# Contest ID: ddcc2016-qual
# Problem ID: ddcc_2016_qual_b ( https://atcoder.jp/contests/ddcc2016-qual/tasks/ddcc_2016_qual_b )
# Title: B. ステップカット
# Language: Ruby (2.3.3)
# Submitted: 2016-11-05 13:26:40 +0000 UTC ( https://atcoder.jp/contests/ddcc2016-qual/submissions/968857 ) 

r, n, m = gets.chomp.split(" ").map(&:to_i)
w = 2 * r.to_f / n
aa = [0]
(1..(n - 1)).each do |i|
  a = w * i < r ? r - w * i : w * i - r
  aa << Math.sqrt(r ** 2 - a ** 2) * 2
end
aa << 0
ret = 0
(1..(n + m - 1)).each do |i|
  if i < 0 || i > n then
    ret += aa[i - m]
  elsif  i - m < 0 || i - m > n then
    ret += aa[i]
  else
    ret += [aa[i], aa[i - m]].max
  end
end

puts ret