# Contest ID: abc031
# Problem ID: abc031_b ( https://atcoder.jp/contests/abc031/tasks/abc031_b )
# Title: B. 運動管理
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-22 08:00:45 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/578112 ) 

l, h = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
n.times do
	a = gets.chomp.to_i
	if a >= l && a <= h then
		puts 0
	elsif a < l then
		puts l - a
	else
		puts -1
	end
end
