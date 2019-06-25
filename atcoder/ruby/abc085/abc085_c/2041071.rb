# Contest ID: abc085
# Problem ID: abc085_c ( https://atcoder.jp/contests/abc085/tasks/abc085_c )
# Title: C. Otoshidama
# Language: Ruby (2.3.3)
# Submitted: 2018-01-30 11:57:50 +0000 UTC ( https://atcoder.jp/contests/abc085/submissions/2041071 ) 

n, y = gets.chomp.split(" ").map(&:to_i)
z = y / 1000
a = [n, y / 10000].min
b = [n, y / 5000].min
(0..a).each do |i|
  (0..b).each do |j|
    k = n - (i + j)
    if k >= 0 && i * 10 + j * 5 + k * 1 == z then
        puts "#{i} #{j} #{k}"
        exit
    end
  end
end

puts "-1 -1 -1"
