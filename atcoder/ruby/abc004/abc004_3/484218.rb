# Contest ID: abc004
# Problem ID: abc004_3 ( https://atcoder.jp/contests/abc004/tasks/abc004_3 )
# Title: C. 入れ替え
# Language: Ruby (1.9.3)
# Submitted: 2015-09-02 07:24:06 +0000 UTC ( https://atcoder.jp/contests/abc004/submissions/484218 ) 

n = gets.chomp.to_i % 30
cards = (1..6).to_a
(0..n-1).each do |i|
  cards[i % 5], cards[i % 5 + 1] = cards[i % 5 + 1], cards[i % 5]
end
puts cards.join("")
