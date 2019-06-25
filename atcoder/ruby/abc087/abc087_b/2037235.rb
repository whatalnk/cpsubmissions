# Contest ID: abc087
# Problem ID: abc087_b ( https://atcoder.jp/contests/abc087/tasks/abc087_b )
# Title: B. Coins
# Language: Ruby (2.3.3)
# Submitted: 2018-01-29 02:48:19 +0000 UTC ( https://atcoder.jp/contests/abc087/submissions/2037235 ) 

a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
ans = 0
(0..a).each do |i|
  (0..b).each do |j|
    (0..c).each do |k|
      ans += 1 if 500 * i + 100 * j + 50 * k == x  
    end
  end
end

puts ans