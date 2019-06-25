# Contest ID: abc095
# Problem ID: arc096_a ( https://atcoder.jp/contests/abc095/tasks/arc096_a )
# Title: C. Half and Half
# Language: Ruby (2.3.3)
# Submitted: 2018-08-23 02:13:10 +0000 UTC ( https://atcoder.jp/contests/abc095/submissions/3059636 ) 

a, b, c, x, y = gets.chomp.split(" ").map(&:to_i)

price1 = a * x + b * y
price2 = c * 2 * x + b * [y - x, 0].max
price3 = a * [x - y, 0].max + c * 2 * y

puts [price1, price2, price3].min