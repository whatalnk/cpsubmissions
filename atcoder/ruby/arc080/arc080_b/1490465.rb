# Contest ID: arc080
# Problem ID: arc080_b ( https://atcoder.jp/contests/arc080/tasks/arc080_b )
# Title: D. Grid Coloring
# Language: Ruby (2.3.3)
# Submitted: 2017-08-06 13:19:30 +0000 UTC ( https://atcoder.jp/contests/arc080/submissions/1490465 ) 

h, w = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

x = []
arr.each_with_index do |a, i|
  x += Array.new(a, i+1)
end
i = 1
x.each_slice(w) do |a|
  if i.even?
    puts a.reverse.join(" ")
  else
    puts a.join(" ")
  end
  i += 1
end