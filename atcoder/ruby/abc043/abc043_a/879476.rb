# Contest ID: abc043
# Problem ID: abc043_a ( https://atcoder.jp/contests/abc043/tasks/abc043_a )
# Title: A. キャンディーとN人の子供イージー / Children and Candies (ABC Edit)
# Language: Ruby (2.3.3)
# Submitted: 2016-09-12 06:04:15 +0000 UTC ( https://atcoder.jp/contests/abc043/submissions/879476 ) 

n = gets.chomp.to_i
if n == 1 then
	puts 1
else
	puts (1 + n) * n / 2
end
	