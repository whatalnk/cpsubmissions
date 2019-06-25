# Contest ID: abc031
# Problem ID: abc031_a ( https://atcoder.jp/contests/abc031/tasks/abc031_a )
# Title: A. ゲーム
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-22 07:49:27 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/578097 ) 

a, d = gets.chomp.split(" ").map(&:to_i)
if a == d then
	puts a * (a + 1)
elsif a < d then
	puts (a + 1) * d
else
	puts a * (d + 1)
end
