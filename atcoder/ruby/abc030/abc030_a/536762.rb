# Contest ID: abc030
# Problem ID: abc030_a ( https://atcoder.jp/contests/abc030/tasks/abc030_a )
# Title: A. 勝率計算
# Language: Ruby (2.1.5p273)
# Submitted: 2015-10-24 12:38:02 +0000 UTC ( https://atcoder.jp/contests/abc030/submissions/536762 ) 

a, b, c, d = gets.chomp.split(" ").map(&:to_f)
takahashi = b / a
aoki = d / c
if takahashi > aoki then
  puts "TAKAHASHI"
elsif takahashi < aoki then
  puts "AOKI"
else
  puts "DRAW"
end

    