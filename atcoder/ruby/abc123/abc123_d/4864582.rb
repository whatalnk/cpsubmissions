# Contest ID: abc123
# Problem ID: abc123_d ( https://atcoder.jp/contests/abc123/tasks/abc123_d )
# Title: D. Cake 123
# Language: Ruby (2.3.3)
# Submitted: 2019-04-06 14:02:07 +0000 UTC ( https://atcoder.jp/contests/abc123/submissions/4864582 ) 

x, y, z, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
c = gets.chomp.split(" ").map(&:to_i)

ab = []
a.each do |x|
  b.each do |y|
    ab << x + y
  end
end
ab.sort!.reverse!

ab = ab[0...k]

abc = []
ab.each do |x|
  c.each do |y|
    abc << x + y
  end
end
abc.sort!.reverse!
abc[0...k].each do |x|
  puts x
end