# Contest ID: arc028
# Problem ID: arc028_1 ( https://atcoder.jp/contests/arc028/tasks/arc028_1 )
# Title: A. 小石を取るゲーム
# Language: Ruby (1.9.3)
# Submitted: 2015-08-25 10:30:47 +0000 UTC ( https://atcoder.jp/contests/arc028/submissions/477267 ) 

n, a, b = gets.chomp.split(" ").map(&:to_i)
while n > 0
  if n <= a then
    puts "Ant"
    break
  else
    n -= a
  end
  if n <= b then
    puts "Bug"
    break
  else
    n -= b
  end
end