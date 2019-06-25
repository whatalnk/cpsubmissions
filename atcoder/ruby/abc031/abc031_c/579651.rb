# Contest ID: abc031
# Problem ID: abc031_c ( https://atcoder.jp/contests/abc031/tasks/abc031_c )
# Title: C. 数列ゲーム
# Language: Ruby (2.1.5p273)
# Submitted: 2015-11-24 04:12:59 +0000 UTC ( https://atcoder.jp/contests/abc031/submissions/579651 ) 

n = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i)

select_aok = ->(tkhs) {
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
}

points = Array.new()
n.times do |j|
  points << select_aok.call(j)
end
puts points.max