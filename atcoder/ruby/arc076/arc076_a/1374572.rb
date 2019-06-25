# Contest ID: arc076
# Problem ID: arc076_a ( https://atcoder.jp/contests/arc076/tasks/arc076_a )
# Title: 
# Language: Ruby (2.3.3)
# Submitted: 2017-06-24 12:17:52 +0000 UTC ( https://atcoder.jp/contests/arc076/submissions/1374572 ) 

n, m = gets.chomp.split(" ").map(&:to_i)

@k = 10**9 + 7

def fact(n)
  ret = 1
  n.downto(1) do |i|
    ret *= i % @k
    ret %= @k
  end
  return ret
end

if n == m then
  puts 2 * fact(n) ** 2 % @k 
elsif n + 1 == m || n == m + 1 then
  puts fact(n) * fact(m) % @k
else
  puts 0
end
