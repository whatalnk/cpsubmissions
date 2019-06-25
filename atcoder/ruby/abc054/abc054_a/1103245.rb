# Contest ID: abc054
# Problem ID: abc054_a ( https://atcoder.jp/contests/abc054/tasks/abc054_a )
# Title: A. One Card Poker
# Language: Ruby (2.3.3)
# Submitted: 2017-02-11 12:04:56 +0000 UTC ( https://atcoder.jp/contests/abc054/submissions/1103245 ) 

cards = Hash.new()
[2,3,4,5,6,7,8,9,10,11,12,13,1].zip((0..13).to_a) do |k, v|
  cards[k] = v
end

a, b = gets.chomp.split(" ").map(&:to_i)
if cards[a] < cards[b] then
  puts "Bob"
elsif cards[a] == cards[b] then
  puts "Draw"
else
  puts "Alice"
end
