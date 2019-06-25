# Contest ID: arc038
# Problem ID: arc038_a ( https://atcoder.jp/contests/arc038/tasks/arc038_a )
# Title: A. カードと兄妹
# Language: Ruby (2.1.5p273)
# Submitted: 2015-05-02 12:53:23 +0000 UTC ( https://atcoder.jp/contests/arc038/submissions/396505 ) 

n = gets.chomp.to_i
cards = gets.chomp.split(" ").map(&:to_i).sort{|a, b| b <=> a }
res = 0
cards.each_with_index do |val, i|
  if i % 2 != 0 then
    next
  else
    res += val
  end
end
puts res