# Contest ID: abc041
# Problem ID: abc041_c ( https://atcoder.jp/contests/abc041/tasks/abc041_c )
# Title: C. 背の順
# Language: Ruby (2.3.3)
# Submitted: 2016-07-02 12:35:22 +0000 UTC ( https://atcoder.jp/contests/abc041/submissions/789176 ) 

n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.zip((1..n).to_a).sort{|x, y| -(x[0] <=> y[0])}.each do |b|
  puts b[1]
end
