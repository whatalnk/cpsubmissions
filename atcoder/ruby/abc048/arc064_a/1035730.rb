# Contest ID: abc048
# Problem ID: arc064_a ( https://atcoder.jp/contests/abc048/tasks/arc064_a )
# Title: C. Boxes and Candies
# Language: Ruby (2.3.3)
# Submitted: 2016-12-22 03:45:25 +0000 UTC ( https://atcoder.jp/contests/abc048/submissions/1035730 ) 

n, x = gets.chomp.split(" ").map(&:to_i)
aa = gets.chomp.split(" ").map(&:to_i)
sum0 = aa.inject(:+)
if aa[0] > x then
  aa[0] = x
end
(1..(n-1)).each do |i|
  if aa[i - 1] + aa[i] > x
    aa[i] = x - aa[i -1]
  end
end
sum1 = aa.inject(:+)
puts sum0 - sum1