# Contest ID: abc123
# Problem ID: abc123_a ( https://atcoder.jp/contests/abc123/tasks/abc123_a )
# Title: A. Five Antennas
# Language: Ruby (2.3.3)
# Submitted: 2019-04-06 12:04:04 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/4843764 ) 

pos = []

5.times do
  pos << gets.chomp.to_i
end

k = gets.chomp.to_i

pos.combination(2) do |a, b|
  if (a - b).abs > k
    puts ":("
    exit
  end
end

puts "Yay!"