# Contest ID: abc117
# Problem ID: abc117_b ( https://atcoder.jp/contests/abc117/tasks/abc117_b )
# Title: B. Polygon
# Language: Ruby (2.3.3)
# Submitted: 2019-03-07 04:21:12 +0000 UTC ( https://atcoder.jp/contests/abc117/submissions/4492380 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i).sort

if a[n-1] < a[0...(n-1)].inject(:+)
  puts "Yes"
else
  puts "No"
end