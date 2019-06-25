# Contest ID: abc031
# Problem ID: abc031_c ( https://atcoder.jp/contests/abc031/tasks/abc031_c )
# Title: C. 数列ゲーム
# Language: Ruby (1.9.3p550)
# Submitted: 2015-11-24 03:23:59 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/579630 ) 

n = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i)

def select_aok(tkhs, n, ary)
	seq_game = Hash.new(0)
	n.times do |i|
		next if i == tkhs
		left = [i, tkhs].min
		right = [i, tkhs].max
		p_aok = 0
		p_tkhs = 0
		ary[left..right].each_slice(2) do |a1, a2|
			p_tkhs += a1.to_i
			p_aok += a2.to_i
		end
		seq_game[p_aok] = p_tkhs unless seq_game.has_key?(p_aok)
	end
	p_aok_max = seq_game.keys.max
	return seq_game[p_aok_max]
end

points = Array.new()
n.times do |j|
	points << select_aok(j, n, ary)
end
puts points.max
