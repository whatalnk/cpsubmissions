# Contest ID: abc044
# Problem ID: abc044_b ( https://atcoder.jp/contests/abc044/tasks/abc044_b )
# Title: B. 美しい文字列 / Beautiful Strings
# Language: Ruby (2.3.3)
# Submitted: 2016-08-28 12:12:50 +0000 UTC ( https://atcoder.jp/contests/abc044/submissions/855247 ) 

w = gets.chomp
h = Hash.new(0)
w.split("").each do |c|
  h[c] += 1
end
if h.values.all?{|x| x.even?} then
  puts "Yes"
else
  puts "No"
end
