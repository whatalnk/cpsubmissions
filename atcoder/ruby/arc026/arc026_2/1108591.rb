# Contest ID: arc026
# Problem ID: arc026_2 ( https://atcoder.jp/contests/arc026/tasks/arc026_2 )
# Title: B. 完全数
# Language: Ruby (1.9.3)
# Submitted: 2017-02-13 01:55:29 +0000 UTC ( https://atcoder.jp/contests/arc026/submissions/1108591 ) 

n = gets.chomp.to_i
nsq = Math.sqrt(n).floor
if n == 1 then
  puts "Deficient"
  exit
end

ret = [1]
2.upto(nsq) do |d|
  if n % d == 0 then
    ret << d
    ret << n / d
  end
end

ans = ret.uniq.inject(:+)
if ans == n then
  puts "Perfect"
elsif ans > n then
  puts "Abundant"
else
  puts "Deficient"
end
