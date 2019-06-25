# Contest ID: arc003
# Problem ID: arc003_2 ( https://atcoder.jp/contests/arc003/tasks/arc003_2 )
# Title: B. さかさま辞書
# Language: Ruby (1.9.3)
# Submitted: 2015-12-20 05:51:49 +0000 UTC ( https://atcoder.jp/contests/arc003/submissions/597346 ) 

n = gets.chomp.to_i
words = []
n.times do
  words << gets.chomp.reverse
end
words.sort.each do |w|
  puts w.reverse
end